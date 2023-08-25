class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(string)
        if @head == nil
            @head = Node.new(string)
        else
            current = @head
            current = current.next_node 
            current = Node.new(string)
        end
    end

    def count
        current = @head
        counter = 0

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