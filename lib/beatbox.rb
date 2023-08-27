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
    # def append(string)
    #     # list = LinkedList.new
    #     new_string = string.split
    #     new_string.each do |word|
    #         new_node = Node.new(word)
    #         if @head == nil
    #             @head = new_node
    #         else
    #             current = @list.head
    #             until current.next_node == nil
    #                 current = current.next_node
    #             end
    #             current.next_node = new_node
    #         end
    #     end
    # end
end