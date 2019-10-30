# your code goes here
class Person
    attr_accessor :bank_account, :hygiene, :happiness
    attr_writer 
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end
    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end
    def take_bath
        num = @hygiene += 4
        self.hygiene=(num)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
       @bank_account += salary 
       p "all about the benjamins"
    end
    def work_out
        n = @happiness += 2
        num = @hygiene -= 3
        self.hygiene=(num)
        self.happiness=(n)
        p "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        p "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            p 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'   
            self.happiness += 1
            person.happiness += 1
            p 'blah blah sun blah rain'
        else
            p  'blah blah blah blah blah'   
        end
    end

end