class Pokemon
  attr_accessor :id,:name,:type,:db,:hp
  @@all = []

  def initialize(attributes)
    attributes.each{|key,value| self.send("#{key}=",value)}
    self.all << self
  end

  def all
    @@all
  end

  def self.save(name,type,db)
    rs = db.execute("INSERT INTO pokemon(name,type) VALUES(?,?)",name,type)
  end

  def self.find(id,db)
    rs = db.execute("SELECT * FROM pokemon WHERE id = ?",id)[0]
    Pokemon.new(id: id, name: rs[1], type: rs[2], db: db)
  end

  def alter_hp(health_now,db)
    self.hp = health_now
    db.execute("update pokemon set hp = ? where id = ?",self.hp,self.id)
    self.hp
  end

end
