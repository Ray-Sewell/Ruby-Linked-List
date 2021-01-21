class Node
    attr_reader :value, :next_node
    def initialize(value=nil)
        @value = value
        @next_node = nil
    end
    def search_pointer(node)
        if @next_node.nil?
            @next_node = node
        else
            @next_node.search_pointer(node)
        end
    end
    def find_tail
        if @next_node.nil?
            return @value
        else
            @next_node.find_tail
        end
    end
    def at(index)
        if index == 0
            puts @value
        else
            if @next_node.nil?
                puts "There is no node at that index!"
            else
                @next_node.at(index - 1)
            end
        end
    end
    def pop
        if @next_node.next_node.nil?
            puts "Popped #{@next_node.value}!"
            @next_node = nil
        else
            @next_node.pop
        end
    end
    def set_pointer(node)
        @next_node = node
    end
    def search(value)
        if @value.to_s == value
            puts "The list contains #{value}!"
        else
            if @next_node.nil?
                puts "The list does not contain #{value}!"
            else
                @next_node.search(value)
            end
        end
    end
    def find(value, i=0)
        if @value.to_s == value
            puts "Found #{value} at index #{i}!"
        else
            if @next_node.nil?
                puts "Cannot find #{value}!"
            else
                @next_node.find(value, i + 1)
            end
        end
    end
    def print
        if @next_node.nil?
            puts @value
            puts "End of list!"
        else
            puts @value
            @next_node.print
        end
    end
    def to_s(string="")
        if @next_node.nil?
            string.concat("( #{@value} ) -> nil")
            puts string
        else
            string.concat("( #{@value} ) -> ")
            @next_node.to_s(string)
        end
    end
end