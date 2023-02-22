# your code goes here
class Person
  attr_reader :name

  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness)
    @happiness = if happiness > 10
      10
    elsif happiness < 0
      0
    else
      happiness
    end
  end

  def hygiene=(hygiene)
    @hygiene = if hygiene > 10
      10
    elsif hygiene < 0
      0
    else
      hygiene
    end
  end

  def clean?
    if self. hygiene > 7 && self.hygiene < 10
      true
    else
      false
    end
  end


  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end


  def get_paid(amount)
    self.bank_account += amount
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend = self.new(str))
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  def start_conversation(friend = self.new(str), topic)
    if topic == 'politics'
    friend.happiness -= 2
    self.happiness -=2
    'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
        friend.happiness += 1
        self.happiness +=1
        'blah blah sun blah rain'
    elsif topic != 'politics' && topic != 'weather'
        'blah blah blah blah blah'
    end
end

end