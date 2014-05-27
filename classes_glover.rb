############################################################
#
#  Name:        Sean Glover
#  Assignment:  Validation Assignment
#  Date:        04/16/2013
#  Class:       CIS 283
#  Description: Ruby Classes
#
############################################################

# create the Person class
class Person
  # initialize instance variables
  def initialize(first_name, last_name, age, hair_color, eye_color)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @hair_color = hair_color
    @eye_color = eye_color
  end

  # Getters for all Attributes
  ########################
  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def age
    return @age
  end

  def hair_color
    return @hair_color
  end

  def eye_color
    return @eye_color
  end

  # Setters for all Attributes
  ########################
  def first_name= (first_name)
    @first_name = first_name
  end

  def last_name= (last_name)
    @last_name = last_name
  end

  def age= (age)
    @age = age
  end

  def hair_color= (hair_color)
    @hair_color = hair_color
  end

  def eye_color= (eye_color)
    @eye_color = eye_color
  end

  # return Person attributes in readable format
  def to_s
    return "Name:        #{@first_name} #{@last_name}\nAge:         #{@age}\nHair Color:  #{@hair_color}\nEye Color:   #{@eye_color}"
  end
end

# create the Address class
class Address
  # initialize instance variables
  def initialize(line_one, city, state, zip, line_two = "")
    @line_one = line_one
    @line_two = line_two
    @city = city
    @state = state
    @zip = zip
  end

  # Getters for all attributes
  #########################
  def line_one
    return @line_one
  end

  def line_two
    return @line_two
  end

  def city
    return @city
  end

  def state
    return @state
  end

  def zip
    return @zip
  end

  # Setters for all attributes
  #########################
  def line_one=(line_one)
    @line_one = line_one
  end

  def line_two=(line_two)
    @line_two = line_two
  end

  def city=(city)
    @city = city
  end

  def state=(state)
    @state = state
  end

  def zip=(zip)
    @zip = zip
  end

  # return Address attributes in readable format
  def to_s
    #return "#{@line_one}\n#{@line_two != "" ? @line_two + "\n" : ""}#{@city}, #{@state} #{@zip}"
    return "#{@line_one}\n#{@line_two + "\n" if @line_two != ""}#{@city}, #{@state} #{@zip}"
  end
end

# create the Character class
class Character2
  def initialize(name, race, hit_points, gold)
    @name = name
    @race = race
    @hit_points = hit_points
    @weapons = []
    @gold = gold
    @clothing = []
  end

  # Getters for all Character attributes
  ##########################
  def name
    return @name
  end

  def race
    return @race
  end

  def hit_points
    return @hit_points
  end

  def weapons
    return @weapons.join(", ")
  end

  def gold
    return @gold
  end

  def clothing
    return @clothing.join(", ")
  end

  # Setters for all Character attributes
  ##########################
  def name=(name)
    @name = name
  end

  def race=(race)
    @race = race
  end

  def hit_points=(hit_points)
    @hit_points = hit_points
  end

  def add_weapons=(weapon)
    @weapons << weapon
  end

  def drop_weapons=(weapon)
    @weapons.delete(weapon)
  end

  def gold=(gold)
    @gold = gold
  end

  def add_clothing=(clothing)
    @clothing << clothing
  end

  def drop_clothing=(clothing)
    @clothing.delete(clothing)
  end

  # return Character object
  def to_s
    return "Name:        #{@name}\nRace:        #{@race}\nHit Points:  #{@hit_points}\nWeapons:     #{@weapons.length == 0 ? "None" : @weapons.join(", ")}\nGold:        #{@gold}\nClothing:    #{@clothing.length == 0 ? "None" : @clothing.join(", ")}"
  end
end


# exercise methods in Person class
me = Person.new("John", "Smith", 100, "Brown", "Green")

puts "New Person object:"
puts me
puts

puts "Individual Getters:"
puts me.first_name
puts me.last_name
puts me.age
puts me.hair_color
puts me.eye_color
puts

puts "Change values using Setters:"
me.first_name = "Sean"
me.last_name = "Glover"
me.age = 36
me.hair_color = "Bald"
me.eye_color = "Hazel"
puts me
puts "*" * 50


# exercise methods in Address class
my_address = Address.new("1234 N. Main St.", "San Francisco", "CA", 95301)

puts "New Address object (uses line 1 only):"
puts my_address
puts

puts "Add value for line 2 (Setter):"
my_address.line_two=("apt 1")
puts my_address
puts

puts "Individual Getters of Address:"
puts "Line 1: #{my_address.line_one}"
puts "Line 2: #{my_address.line_two}"
puts "City:   #{my_address.city}"
puts "State:  #{my_address.state}"
puts "Zip:    #{my_address.zip}"
puts

puts "Change values using Setters:"
my_address.line_one = "2408. N. Standard St."
my_address.line_two = ""
my_address.city = "Spokane"
my_address.state = "WA"
my_address.zip = 99207
puts my_address
puts "*" * 50


# exercise methods in Character class
my_char = Character.new("Tarushan", "Tarutaru", 3500, 8567423)

puts "New Character object:"
puts my_char
puts

puts "Add 1 weapon and 1 clothing item (Setters):"
my_char.add_weapons = "Short sword"
my_char.add_clothing = "Chainmail"
puts my_char
puts

puts "Add additional weapon and clothing item:"
my_char.add_weapons = "Crossbow"
my_char.add_clothing = "Helmet"
puts my_char
puts

puts "Individual Getters of Character:"
puts my_char.name
puts my_char.race
puts my_char.hit_points
puts my_char.weapons
puts my_char.gold
puts my_char.clothing
puts

puts "Change values using Setters:"
my_char.name = "Cole Slawter"
my_char.race = "Lalafel"
my_char.hit_points = 2100
my_char.gold = 1000000
puts my_char
puts

puts "Drop 1 weapon and 1 clothing item:"
my_char.drop_weapons = "Short sword"
my_char.drop_clothing = "Helmet"
puts my_char
