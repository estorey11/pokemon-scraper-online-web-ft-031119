class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all=[]
  
  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.save(pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", pk_name, pk_type)
    
  end
end
