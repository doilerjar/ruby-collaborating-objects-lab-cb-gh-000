class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = nil
  end 
  
  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[0])
    song.artist = filename.split(" - ")[1]
    song
  end 

end 