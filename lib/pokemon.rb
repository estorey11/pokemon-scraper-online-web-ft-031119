class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all=[]
  
  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.save(pk_name, pk_type, db))
  end
end
