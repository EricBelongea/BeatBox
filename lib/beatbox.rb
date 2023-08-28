class Beatbox
    attr_reader :list
    def initialize(data = nil)
        @list = LinkedList.new
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
   
    def play
        beats = @list.to_string
        `say -r 250 -v Boing "#{beats}"`
    end

    def valid_beat(string)
        valid_beat_options = ["deep", "doop", "ditt", "boop", "bip", "shu", "shee", "woo", "nah", "blop", "plop", "shop", "pop", "lock", "drop", "it", "yup", "cup", "pup", "tup", "nope", "head?", "bup", "beep", "bop", "dup", "gup", "trouble?", "coup"]
        
        passed_beats = string.select do |beat|
            valid_beat_options.include?(beat)
        end
        passed_beats
    end
end