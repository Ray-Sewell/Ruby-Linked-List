require_relative("node.rb")

class LinkedList
    attr_reader :head, :size
    def initialize
        @head = nil
        @size = 0
    end
    def append(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            @head.search_pointer(new_node)
        end
        @size += 1
    end
    def prepend(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            new_node.set_pointer(@head)
            @head = new_node
        end
        @size += 1
    end
    def size
        puts @size
    end
    def head
        unless empty?
            puts "The head of the list is #{@head.value}"
        end
    end
    def tail
        unless empty?
            puts "The tail of the list is #{@head.find_tail}"
        end
    end
    def print
        unless empty?
            @head.print
        end
    end
    def at(index)
        unless empty?
            @head.at(index)
        end
    end
    def pop
        unless empty?
            if @head.next_node.nil?
                puts "Popped #{@head.value}!"
                @head = nil
                @size = 0
            else
                @head.pop
                @size -= 1
            end
        end
    end
    def contains?(value)
        unless empty?
            @head.search(value.to_s)
        end
    end
    def find(value)
        unless empty?
            @head.find(value.to_s)
        end
    end
    def to_s
        unless empty?
            @head.to_s
        end
    end
    def empty?
        if @head.nil?
            puts "There is nothing in the list!"
            return true
        else
            return false
        end
    end
end