


module EchoNest
  class PagedResult < DelegateClass(Array)

    def initialize(results, block)
      @results = results
      @update = block
      @available = @results.docs
      super(@available)
    end

    def found
      @results.found
    end

    def next_page
      results = @update.call @available.length, 15
      @available += results.docs
      self.__setobj__(@available)
    end

    def [](i)
      return @available[i] if @available[i]
      next_page
      @available[i]
    end    
        
    
  end
end
