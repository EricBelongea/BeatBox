class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(string)
        new_node = Node.new(string)
        if @head == nil
            @head = new_node
        else # put a pry in else block; where does data get lost; what is the return value
            current = @head
            current = current.next_node while current.next_node
            current.next_node = new_node
        end
    end

    def prepend(string)
        new_node = Node.new(string)
        if @head == nil
            @head = new_node
        else
            new_node.next_node = @head
            @head = new_node
        end
    end

    def insert(index, string)
        new_node = Node.new(string)
        if index == 0
            new_node.next_node = @head
            @head = new_node
        elsif index > count
            "index too high"
        else
            current = @head
            counter = 1 
            until counter >= index do
                current = current.next_node
                counter += 1
            end
            new_node.next_node = current.next_node
            current.next_node = new_node
        end
    end

    def count
        current = @head
        counter = 0
        if current == nil
            counter = 0
        else
            current = @head
            until current == nil do
                current = current.next_node
                counter += 1
            end
        end
        counter
    end

    def to_string
        current = @head
        string = ""
        # require 'pry';binding.pry
        if current == nil
            "There's no head"
        else
            # current = @head
            until current == nil do
                string += "#{current.data} "
                current = current.next_node
            end
        end
        string.strip
    end

    # Doesn't work for when index is higher than count.
    def find(index, elements)
        current = @head
        string = ""
        counter = 1
        if index > count
            "This is an empty list"
        elsif count == 0
            "index too high"
        else
            until counter > index + elements  
                string += "#{current.data} " if counter > index
                current = current.next_node
                counter += 1
            end
        end
        string.strip
    end

    def includes?(string)
        current = @head
        if @head == nil
            "This is an empty list"
        else
            current = @head
            while current
                return true if current.data == string
                current = current.next_node
            end
            false
        end
    end
end
