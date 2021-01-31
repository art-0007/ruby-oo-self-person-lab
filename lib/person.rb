class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene


def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    
end

def happiness= (num)
    @happiness = num.clamp(0, 10)
end

def hygiene=(num)
    @hygiene = num.clamp(0, 10)
end

def happy?
   if @happiness > 7
   return true
    else
    return false
    end
end

def clean?
    if @hygiene > 7
    return true
     else
     return false
     end
 end

def get_paid (salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
end

def take_bath
    self.hygiene = (@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene = (@hygiene - 3)
    self.happiness = (@happiness + 2)
   "♪ another one bites the dust ♫"
end

def call_friend (callee)
    self.happiness = (@happiness + 3)
    callee.happiness = (callee.happiness + 3)
      return "Hi #{callee.name}! It's #{self.name}. How are you?" 
end

def start_conversation (name , topic)

    if topic == "politics"
        self.happiness = (@happiness - 2)
        name.happiness = (name.happiness - 2)
    return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness = (@happiness + 1)
        name.happiness = (name.happiness + 1)
    return "blah blah sun blah rain"
    else
    return "blah blah blah blah blah"
    end


end

end
