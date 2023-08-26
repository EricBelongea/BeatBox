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
            old_head = @head
            @head = Node.new(string)
            @head.next_node = old_head
        end
    end

    def insert(index, string)
        new_node = Node.new(string)

        if index == 0
            new_node.next_node = @head
            @head = new_node
        elsif index > count
            "Index too high"
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
end