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
        # list = LinkedList.new


        # require 'pry';binding.pry
        expect(bb.list).to be_instance_of(LinkedList)
        expect(bb.list.head).to eq(nil)
    end

    it 'can append mutliple nodes' do 
        bb = Beatbox.new
        # require 'pry';binding.pry
        bb.append("deep doop ditt")

        expect(bb.list.to_string).to eq("deep doop ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.head.next_node.data).to eq("doop")
    end

    it 'can count bb nodes' do
        bb = Beatbox.new

        bb.append("beep bop boop")

        expect(bb.count).to eq(3)
    end

    it 'plays the beats' do
        bb = Beatbox.new
        bb.append("beep bop boop bip flip dip hip")

        expect(bb.list.to_string).to eq("beep bop boop bip flip dip hip")
        bb.play
    end
end