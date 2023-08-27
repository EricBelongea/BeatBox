class Beatbox
    attr_reader :list
    def initialize
        @list = LinkedList.new
    end
   
    def append(string)
        split_string = string.split
        split_string.each do |string|
             @list.append(string)
        end
    end

    def count
        current = @list.head
        counter = 0
        if current == nil
            counter
        else
            counter += 1
            until current.next_node == nil
                counter += 1
                current = current.next_node
            end
        end
        counter
    end
   
    def play
        beats = @list.to_string
        `say -r 250 "#{beats}"`
    end
end