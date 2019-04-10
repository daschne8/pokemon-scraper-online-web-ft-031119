class Pokemon
  attr_accessor :id,:name,:type,:db
  @@all = []
  def initialize(attributes)
    attributes.each{|key,value| self.send("#{key}=",value)}
  end
  
end
