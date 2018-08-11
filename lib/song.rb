class Song
  
  attr_accessor :name, :artist_name
  
  def initialize(name)
    @name = name
    @artist = ""
  end 

  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    song.artist.name = filename.split(" - ")[0]
    song
  end 

end 