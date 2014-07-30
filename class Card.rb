class Card
  @@card_ids = 0
  @@card_array = []
  attr_accessor :name
  attr_accessor :value
  attr_accessor :id

  def test_1
    puts "DUde 1"
  end

  def test_2
    puts "Dude 2"
  end

  def self.new_card(*attrs)
    card = Card.new
    card.name = attrs[0]
    card.value = attrs[1]
    card.id = @@card_ids
    @@card_ids += 1 
    @@card_array.push card
    card
  end

  def self.find_card card_id
    @@card_array.select{|card| card.id == card_id }.first 
  end

  def self.card_array
    @@card_array
  end
end

card1 = Card.new_card("Ace", "Spades")
card2 = Card.new_card("Ace", "Spades")
card3 = Card.new_card("Ace", "Spades")
card4 = Card.new_card("Ace", "Spades")
# card.send("test_#{card.name}")
p Card.find_card 5
p Card.find_card 2