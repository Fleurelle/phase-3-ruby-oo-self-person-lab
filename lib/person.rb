# your code goes here

require "pry"

class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name(name)
        @name
    end
    
    # Person#name: gets the person's name.
    def name
        @name
    end

    # Person#bank_account: gets the amount in a person's bank account.
    attr_accessor :bank_account
    
    # Person#bank_account=(value): sets the value of the bank account to a new amount.
    def bank_account=(value)
        @bank_account = value
    end

  # Person#happiness=(value): sets the value of the person's happiness points. The maximum value allowed is 10, and the minimum value allowed is 0.
    def happiness=(num)
        @happiness = 
        if num > 10 
            10
        elsif num <  0
            0
        else
            num
        end
    end
    # Person#happiness: gets the value of the person's happiness points
    def happiness
        @happiness
    end

    # Person#hygiene=(value): sets the value of the person's hygiene points. The maximum value allowed is 10, and the minimum value allowed is 0.
    def hygiene=(value)
        @hygiene = 
            if value > 10 
                10
            elsif value < 0
                0
            else
                value
            end
    end
    # Person#hygiene: gets the value of the person's hygiene points.
    def hygiene
        @hygiene
    end

    # Person#clean?: returns true if the person's hygiene is more than seven; otherwise, it returns false.
    def clean?
        # binding.pry
        self.hygiene > 7
    end

    # Person#happy?: returns true if the person's happiness is more than seven; otherwise, it returns false.
    def happy?
        self.happiness > 7
    end

    # Person#get_paid(amount): accepts a salary amount and adds this to the person's bank account. The method should return the string "all about the benjamins".
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    # Person#take_bath: increments the person's hygiene points by four and returns the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # Person#work_out: increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫"
    def work_out
        self.happiness +=2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic 
        when "politics"
          [self, friend].each { |person| person.happiness -= 2 }
          "blah blah partisan blah lobbyist"
        when "weather"
          [self, friend].each { |person| person.happiness += 1 }
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
end
