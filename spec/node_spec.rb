require 'rspec'
require "../lib/node"
require 'pry'
RSpec.describe Node do
    it 'exists' do
        node = Node.new("plop")

        expect(node).to be_instance_of(Node)
    end

    it 'node can store data' do
        node = Node.new("plop")

        expect(node.data).to eq("plop")
    end

    it 'has an empty pointer' do 
        node = Node.new("plop")

        expect(node.next_node).to eq(nil)
        binding.pry
    end
end