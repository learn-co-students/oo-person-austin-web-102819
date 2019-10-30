# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(happiness)
        @happiness = happiness
        @happiness > 10 ? @happiness = 10 : @happiness = @happiness
        @happiness < 0 ? @happiness = 0 : @happiness = @happiness
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene > 10 ? @hygiene = 10 : @hygiene = @hygiene
        @hygiene < 0 ? @hygiene = 0 : @hygiene = @hygiene
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def receive_payments
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
    
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        case topic
        when "politics"
            friend.happiness -= 2
            self.happiness -= 2
            
            return "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness += 1
            self.happiness += 1
            
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    def state
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def work_out
        self.happiness += 2 
        self.hygiene -= 3

        "♪ another one bites the dust ♫"
    end

    def initialize(name)
        @name = name
        @bank_account = 25

        @happiness = 8

        @hygiene = 8
    end

end
