class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = nil
  end 
  
  def new_by_filename(name)
    song = self.new(name)
  end 

end 