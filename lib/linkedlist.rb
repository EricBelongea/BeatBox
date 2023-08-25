class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(string)
        if @head == nil
            @head = Node.new(string)
        else
            last_node = @head
            until last_node.next_node == nil do
                last_node = last_node.next_node
            end
        end
    end

    def count
        current = @head
        counter = 1

        if current.next_node == nil
            counter = 0
        end

        while current
            counter += 1
            current = current.next_node
        end
        counter
    end

    def to_string
        @head.data.to_s
    end
end