require './lib/node'
require './lib/linkedlist'
require 'pry'

RSpec.describe LinkedList do
    it 'exists' do
        list = LinkedList.new

        expect(list).to be_instance_of(LinkedList)
    end

    it 'has an empty head' do 
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it 'can append AND has a head' do
        list = LinkedList.new
        list.append("yup")

        expect(list.head.data).to eq("yup")
    end

    it 'it has a head that points to nil' do
        list = LinkedList.new
        list.append("yup")
        
        expect(list.head.next_node).to eq(nil)
    end

    it 'can count the amount of nodes' do
        list = LinkedList.new
        list.append("yup")
        # list.append("zip")
        # binding.pry
        expect(list.count).to eq(1)
    end

    it 'coverts the nodes to strings' do
        list = LinkedList.new
        list.append("yup")

        expect(list.to_string).to eq("yup")
    end

    # it 'can have multiple nodes' do
    #     list = LinkedList.new
    #     list.append("yup")
    #     list.append("cup")

    #     expect(list).to eq(list.head.next_node)
    # end

    it 'the next node is in the list and stores data' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        # binding.pry
        expect(list.head.next_node.data).to eq("cup")
    end

    it 'can count linked list with multiple nodes' do 
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        # binding.pry
        expect(list.count).to eq(2)
    end

    it 'can covert nodes to strings' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        # binding.pry 
        expect(list.to_string).to eq("yup cup")
    end

    it 'can perpend' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.prepend("pup")
        
        expect(list.to_string).to eq("pup yup cup")
        expect(list.count).to eq(3)
    end

    it 'can insert based on index' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        list.insert(1, "pup")
        expect(list.to_string).to eq("yup pup cup")

        list.insert(3, "tup") # smoke test: can add to end of list
        expect(list.to_string).to eq("yup pup cup tup")

        list.insert(9, "nope") # smoke test: index too high
        expect(list.insert(9, "nope")).to eq("index too high")

        list.insert(0, "head?") # smoke test: can be the head
        expect(list.head.data).to eq("head?")
    end

    it 'find index and number of nodes' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")
        list.append("dup")
        list.append("gup")

        expect(list.find(1,2)).to eq("cup bup")
        expect(list.find(2,3)).to eq("bup dup gup")
    end
end
