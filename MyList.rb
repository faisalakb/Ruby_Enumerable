require_relative 'MyEnumerable'

class MyList
    include MyEnumerable
    attr_reader :list
    
    def initialize(*list)
        @list = list
    end

    def each(&block)
        @list.each(&block)
    end 
end