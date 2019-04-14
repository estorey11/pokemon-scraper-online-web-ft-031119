class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all=[]
  
  def initialize(id, name, db)
    @id=id 
    @name=name 
    @db=db
  end
end
