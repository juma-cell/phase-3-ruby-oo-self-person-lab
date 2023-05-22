# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(value)
      @bank_account = value
    end
  
    def happiness=(value)
      @happiness = value.clamp(0, 10)  # Using the `clamp` method to limit the value between 0 and 10
    end
  
    def hygiene=(value)
      @hygiene = value.clamp(0, 10)  # Using the `clamp` method to limit the value between 0 and 10
    end
  
    def clean?
      hygiene > 7  # Returns true if hygiene is more than 7, otherwise false
    end
  
    def happy?
      happiness > 7  # Returns true if happiness is more than 7, otherwise false
    end
  
    def get_paid(amount)
      self.bank_account += amount  # Adds the amount to the bank account using the setter method
      "all about the benjamins"  # Returns the string "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4  # Increments hygiene by 4 using the setter method
      "♪ Rub-a-dub just relaxing in the tub ♫"  # Returns the string "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2  # Increments happiness by 2 using the setter method
      self.hygiene -= 3  # Decrements hygiene by 3 using the setter method
      "♪ another one bites the dust ♫"  # Returns the string "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3  # Increments happiness by 3 using the setter method
      friend.happiness += 3  # Increments friend's happiness by 3 using the setter method
      "Hi #{friend.name}! It's #{self.name}. How are you?"  # Returns a greeting message with names
    end
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        self.happiness -= 2  # Decrements happiness by 2 using the setter method
        friend.happiness -= 2  # Decrements friend's happiness by 2 using the setter method
        "blah blah partisan blah lobbyist"  # Returns a politics-related string
      when "weather"
        self.happiness += 1  # Increments happiness by 1 using the setter method
        friend.happiness += 1  # Increments friend's happiness by 1 using the setter method
        "blah blah sun blah rain"  # Returns a weather-related string
      else
        "blah blah blah blah blah"  # Returns a generic string if the topic is neither politics nor weather
      end
    end
  end
  