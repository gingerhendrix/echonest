


module EchoNest
  class PagedResult < DelegateClass(Array)

    def initialize(results, block, options={})
      @results = results
      @update = block
      @page_name = options[:page] || :docs 
      @available = @results.send(@page_name)
      super(@available)
    end

    def found
      @results.found
    end

    def next_page
      results = @update.call @available.length, 15
      @available += results.send(@page_name)
      self.__setobj__(@available)
    end

    def [](i)
      return @available[i] if @available[i]
      next_page
      @available[i]
    end    
        
    
  end
end
