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
    it "can filter appropriate sounds" do
        bb = Beatbox.new("deep")
        bb.append("missippi") # filtered out: not on the list.

        expect(bb.list.to_string).to eq("deep")
    end
end

describe "#all" do
    it 'lists all nodes in one string' do
        bb = Beatbox.new("beep")
        bb.append("boop")
        bb.append("deep")
        bb.append("doop")
        bb.append("coup")

        expect(bb.all).to eq("beep boop deep doop coup")
    end
end

describe "#prepend" do
    it 'can prepend multiple nodes' do
        bb = Beatbox.new("boop deep beep")

        bb.prepend("pup ditt")
        expect(bb.all).to eq("ditt pup boop deep beep")
    end

    it 'can prepend multiple and filter nodes' do
        bb = Beatbox.new("boop deep pup")

        bb.prepend("pup mississippi")

        expect(bb.all).to eq("pup boop deep pup")
    end
end

describe "#rates" do
    it 'adjust the rate and reset the rate' do
        bb = Beatbox.new("boop beep deep doop")

        bb.rate = 200
        expect(bb.rate).to eq(200)
    end

    it 'rate can be reset' do
        bb = Beatbox.new("boop beep deep doop")

        bb.reset_rate
        expect(bb.rate).to eq(500)
    end
end

describe "#voice" do
    it 'voice can be changed' do
        bb = Beatbox.new("boop beep deep doop")

        bb.voice = "Daniel"

        expect(bb.voice).to eq("Daniel")
    end

    it "can reset the voice" do
        bb = Beatbox.new("boop beep deep doop")

        bb.reset_voice

        expect(bb.voice).to eq("Boing")
    end
end

describe "#theVibe" do
    it 'it sings' do
        bb = Beatbox.new

        bb.append("dum dah dum dum what it do how it be i love coding with you with me now its time for ice cream ice cream")
        
        bb.rate = 75
        bb.voice = "Cello"
        
        expect(bb.respond_to?(:play)).to be true
        bb.play
    end

    # it 'is a beat' do
end