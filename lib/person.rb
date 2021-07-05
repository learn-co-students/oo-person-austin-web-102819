class Person
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end

    def happy?
        if @happiness > 7
            return true
        end
        return false
    end

    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        num = @hygiene += 4
        self.hygiene=(num)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        num1 = @hygiene -= 3
        self.hygiene=(num1)
        num2 = @happiness += 2
        self.happiness=(num2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3
        "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend_name, topic)
       if topic == "politics"
        friend_name.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist" 
       elsif topic == "weather"
        friend_name.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
       else topic == "other"
        "blah blah blah blah blah"
        end
    end


end