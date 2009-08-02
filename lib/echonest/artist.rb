
module EchoNest
  class Artist
    attr_accessor :id
    
    def initialize(id=nil)
      @id = id if id
    end
    
    def self.service(name, options = {})
    
      define_method "get_#{name.to_s}" do |*args|
        options = args[0] if args.length == 1
        options = {:id => id}.merge(options)
        request = ApiRequest.new("get_#{name.to_s}", options)
        "Xml::#{name.to_s.titleize}Result".constantize.parse request.fetch
      end

      if !options[:singular]
        define_method name do
          return instance_variable_get("@#{name.to_s}") if instance_variable_get("@#{name.to_s}")
          result = self.send("get_#{name.to_s}")
          pager = Proc.new { |start, rows| 
            self.send("get_#{name.to_s}", :start => start, :rows => rows).results
          }
          page = PagedResult.new result.results, pager 
          instance_variable_set("@#{name.to_s}",  page)
        end
      else
        if !options[:provides]
          define_method name do
            return instance_variable_get("@#{name.to_s}") if instance_variable_get("@#{name.to_s}")
            result = self.send("get_#{name.to_s}")
            instance_variable_set("@#{name.to_s}", result.artist.send(name))
          end
        else

          define_method name do
            return instance_variable_get("@#{name.to_s}") if instance_variable_get("@#{name.to_s}")
            result = self.send("get_#{name.to_s}")
            instance_variable_set("@#{name.to_s}", result.artist)
          end

          options[:provides].each do |prop|
            define_method prop do
              return instance_variable_get("@#{prop.to_s}") if instance_variable_get("@#{prop.to_s}")
              instance_variable_set("@#{prop.to_s}",  self.send(name).send(prop))
            end
          end
        end
      end    
    end
    
    def self.find(query, options={})
      options = {:query => query}.merge(options)
      request = ApiRequest.new("search_artists", options)
      results = Xml::ArtistSearchResults.parse(request.fetch)
      results.artists
    end
    
    service :audio
    service :blogs
    service :familiarity, :singular => true
    service :hotttnesss, :singular => true
    service :news
    service :profile, :singular => true, :provides => [:id, :name, :foreign_id]
    service :reviews
    service :similar
    service :urls, :singular => true, :provides => [:mb_url, :official_url, :myspace_url, :wikipedia_url,  :amazon_url, :itunes_url]
    service :video
    
 
  end
end
