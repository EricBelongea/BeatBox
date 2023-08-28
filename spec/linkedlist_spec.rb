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
end

describe "#append" do
    it 'has a head equal to nil' do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it 'can append data to head' do
        list = LinkedList.new
        list.append("yup")

        expect(list.head.data).to eq("yup")
    end

    it 'it has a head that points to nil' do
        list = LinkedList.new
        list.append("yup")
        
        expect(list.head.next_node).to eq(nil)
    end

    it "appends next node and stores data" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.head.next_node.data).to eq("cup")
    end
end

describe "#count" do
    it 'can count a node' do
        list = LinkedList.new
        list.append("yup")
        
        expect(list.count).to eq(1)
    end

    it "can count multiple nodes" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.count).to eq(2)
    end

    it 'can count linked list with multiple nodes' do 
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("pup")
        list.append("tup")
        
        expect(list.count).to eq(4)
    end
end

describe "#to_string" do
    it 'coverts the nodes to strings' do
        list = LinkedList.new
        list.append("yup")

        expect(list.to_string).to eq("yup")
    end

    it 'can convert multiple nodes to a string' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        expect(list.to_string).to eq("yup cup")

        list.append("pup")
        expect(list.to_string).to eq("yup cup pup")
    end
end

describe "#prepend" do
    it 'can perpend' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.prepend("pup")
        
        expect(list.to_string).to eq("pup yup cup")
        expect(list.count).to eq(3)
    end
end

describe "#insert" do
    it 'can insert based on index' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        list.insert(1, "pup")
        expect(list.to_string).to eq("yup pup cup")   
    end

    it "can insert to end of list" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("pup")

        list.insert(3, "tup") 
        expect(list.to_string).to eq("yup cup pup tup")
    end

    it "return error if index is out of range" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        list.insert(9, "nope")
        expect(list.insert(9, "nope")).to eq("index too high")
    end

    it "can be the head" do 
        list = LinkedList.new
        list.append("yup")
        list.append("cup")

        list.insert(0, "head?") 
        expect(list.head.data).to eq("head?")
    end
end

describe "#find" do
    it 'find index and return multiple nodes' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")
        list.append("dup")
        list.append("gup")

        expect(list.find(1,2)).to eq("cup bup")
        expect(list.find(2,3)).to eq("bup dup gup")
    end

    it "can call the head node" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")
        list.append("dup")
        list.append("gup")

        expect(list.find(0,1)).to eq("yup")
    end

    it "returns an error for an empty list" do
        list = LinkedList.new

        expect(list.find(2,1)).to eq("This is an empty list")
    end

    it "will return error for out of range index" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")
        list.append("dup")
        list.append("gup")

        expect(list.find(9,4)).to eq("index too high") 
    end
end

describe "#includes?" do 
    it 'has an include? method' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")

        expect(list.includes?("yup")).to be true
        expect(list.includes?("bup")).to be true
        expect(list.includes?("trouble?")).to be false
    end
end

describe "#pop" do
    it 'can remove the last node and return its value' do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")

        expect(list.pop).to eq("bup")
        expect(list.to_string).to eq("yup cup")
    end

    it "can pop twice in a row" do
        list = LinkedList.new
        list.append("yup")
        list.append("cup")
        list.append("bup")
        
        list.pop
        expect(list.pop).to eq("cup")
    end

end
