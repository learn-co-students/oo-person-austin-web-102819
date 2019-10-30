# your code goes here
class Person
    attr_reader :name 
    attr_writer :hygiene
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name 
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene
        @hygiene < 0 ? @hygiene = 0 : @hygiene
        @hygiene > 10 ? @hygiene = 10 : @hygiene
    end

    def happy?
        if @happiness > 7
             true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
             true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    #use self because we want to update the unique person instance and not the whole class

    def work_out
        self.hygiene -= 3 
        self.happiness += 2
         "♪ another one bites the dust ♫"
    end

    def call_friend(friends_name)
        self.happiness += 3
        friends_name.happiness += 3
        "Hi #{friends_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist' 

        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
        'blah blah sun blah rain'

        else
            'blah blah blah blah blah'
         end

    end


end

