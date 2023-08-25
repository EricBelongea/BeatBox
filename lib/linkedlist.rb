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
        current = @head.data
        string = " "
        if current == nil
            string << current
        else
            current = @head.data
            until current == nil do
                string << current
            end
        end
        string
    end
end