class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end
    
    def append(string)
        new_node = Node.new(string)

        if @head == nil
            @head = new_node
        else 
            current = @head
            until current.next_node == nil
                current = current.next_node
            end
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
            until counter >= index
                current = current.next_node
                counter += 1
            end
            new_node.next_node = current.next_node
            current.next_node = new_node
        end
    end
    
    def find(index, elements)
        current = @head
        string = ""
        counter = 1
        if count == 0
            return "This is an empty list"
        elsif index > count
            return "index too high"
        else
            until counter > index + elements  
                string += "#{current.data} " if counter > index
                current = current.next_node
                counter += 1
            end
        end
        string.strip
    end

    def count
        current = @head
        counter = 0
        if current == nil
            counter = 0
        else
            counter += 1
            until current.next_node == nil
                counter += 1
                current = current.next_node
            end
        end
        counter
    end

    def to_string
        current = @head
        string = ""
        if current == nil
            "There's no head"
        else
            until current == nil
                string += "#{current.data} "
                current = current.next_node
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

    def pop
        current = @head
        if @head == nil
            "This is an empty list"
        else
            current = @head
            prev_node = nil

            until current.next_node == nil
                current = current.next_node
            end
            prev_node = current
            
            current = @head
            until current.next_node == prev_node
                current = current.next_node
            end
            current.next_node = nil
            prev_node.data
        end
    end
end
