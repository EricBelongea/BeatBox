require './lib/node'
require './lib/linkedlist'
require './lib/beatbox'

RSpec.describe Beatbox do
    it 'exists' do
        bb = Beatbox.new

        expect(bb).to be_instance_of Beatbox
    end
    it 'has a LinkedList' do
        bb = Beatbox.new
    
        expect(bb.list).to be_instance_of(LinkedList)
        expect(bb.list.head).to eq(nil)
    end
    it "can take a parameter" do
        bb = Beatbox.new("deep")

        expect(bb.list.head.data).to eq("deep")
    end
end
describe "#append" do
    it 'can append mutliple nodes' do 
        bb = Beatbox.new
        bb.append("deep doop ditt")

        expect(bb.list.to_string).to eq("deep doop ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doop")
    end
end
describe "#count" do
    it 'can count bb nodes' do
        bb = Beatbox.new

        bb.append("beep bop boop")

        expect(bb.count).to eq(3)
    end
end
describe "#play" do
    it 'plays the beats' do
        bb = Beatbox.new
        bb.append("beep bop boop bip flip dip chip")

        expect(bb.respond_to?(:play)).to be true
        # bb.play # DJ gigs already blownin' up the phone
    end
end

describe "#validate" do
    xit "can filter appropriate sounds" do
        bb = Beatbox.new("deep")
        bb.append("missippi")

        expect(bb.to_string).to eq("deep")
    end
end