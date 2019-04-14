class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all=[]
  
  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.save(pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", pk_name, pk_type)
  end
  
  def self.find(id, db)
    pokemon_info=db.execute("SELECT * FROM pokemon WHERE id=#{id}")[0]
    pokemon_hash={id: pokemon_info[0],
                  name: pokemon_info[1],
                  type: pokemon_info[2],
                  db: db
    }
    self.new(pokemon_hash)
  end
  
  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = #{new_hp} WHERE id = #{self.id}")
  end
end
