require 'rspec'
require "./lib/node"
require 'pry'
RSpec.describe Node do
    it 'exists' do
        node = Node.new("plop")

        expect(node).to be_instance_of(Node)
    end
end
describe "#data" do
    it 'node can store data' do
        node = Node.new("plop")

        expect(node.data).to eq("plop")
    end
end
describe "#pointer" do
    it 'nex_node equal to nil' do 
        node = Node.new("plop")

        expect(node.next_node).to eq(nil)
    end
end