class Beatbox
  attr_reader :list
  attr_accessor :rate, :voice
  def initialize(data = nil)
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
    @list.append(data) if data != nil
  end
   
  def append(string)
    split_string = string.split
    passed_beats = valid_beat(split_string)
    passed_beats.each do |string|
       @list.append(string)
    end
  end
  
  def prepend(string)
    split_string = string.split
    passed_beats = valid_beat(split_string)
    passed_beats.each do |string|
      @list.prepend(string)
    end

  end

  def all
    @list.to_string
  end

  def count
    @list.count
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end
   
  def play
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} "#{beats}"`
  end

  def valid_beat(string)
    valid_beat_options = ["deep", "doop", "ditt", "sup", "boop", "bip", "shu", "shee", "woo", "nah", "blop", "plop", "shop", "pop", "lock", "drop", "it", "yup", "cup", "pup", "tup", "nope", "head?", "bup", "beep", "bop", "dup", "gup", "trouble?", "coup", "dum", "dah", "dum", "dum", "dahhhh", "what", "it", "do", "how", "it", "be", "i", "love", "coding", "with", "you", "with", "me", "now", "its", "time", "for", "ice", "cream", "ice", "cream"]
    
    passed_beats = string.select do |beat|
             valid_beat_options.include?(beat)
            end
  end
end