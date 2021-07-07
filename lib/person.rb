require_relative "../lib/person.rb"

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
   self.hygiene += 4
   "♪ Rub-a-dub just relaxing in the tub ♫"
end    

def work_out
   num = @hygiene -= 3
   self.hygiene=(num)
   num_1 = @happiness += 2 
   self.happiness=(num_1)
   "♪ another one bites the dust ♫"
end

def call_friend(friend_name)
    friend_name.happiness += 3
    self.happiness += 3
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
  else
    "blah blah blah blah blah"
  end
end

end
