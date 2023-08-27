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
        list = LinkedList.new


        require 'pry';binding.pry
        expect(bb.list)
    end
end