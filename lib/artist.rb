class Artist
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name="")
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    
    # Reached here, the artist doesn't exist
    artist = Artist.new(name)
    artist
  end 
  
  def self.all
    @@all  
  end 
  
  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
  
end 