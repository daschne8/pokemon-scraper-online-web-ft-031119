class Pokemon
  attr_accessor :id,:name,:type,:db
  @@all = []

  def initialize(attributes)
    attributes.each{|key,value| self.send("#{key}=",value)}
    self.all << self
  end

  def all
    @@all
  end

  def self.save

  end

  def self.find()

  end

end
