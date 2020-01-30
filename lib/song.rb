class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    name = filname.split("-")[0]
    artist = filname.split("-")[1]
    song = Song.new(name)
    song.artist = artist
    song
  end
  
end