class Person
  # your code here
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  @@all = []

  def initialize(args)
    args.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
      @@all << self
    end
  end

  def self.all
    @@all
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
bob.name       # => "Bob"
bob.hair_color # => "Brown"

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
susan.name      # => "Susan"
susan.height    # => "5'11""
p susan.eye_color # => "Green"