require '../lib/node'
require '../lib/linkedlist'
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

    it 'can have multiple nodes' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.head.next_node).to eq(list.append("cup"))
    end

    it 'the next node is in the list and stores data' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.head.next_node).to eq(list.append("cup"))
    end

    it 'can count linked list with multiple nodes' do 
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.count).to eq(2)
    end

    xit 'can covert nodes to strings' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.to_string).to eq("yup cup")
    end
end