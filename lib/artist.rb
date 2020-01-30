class Artist
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist = self}
  end
  
  def self.find_or_create_by_name(name)
    result = nil
    Artist.all.each do |artist|
      artist.name == name ? result = artist : result = Artist.new(name)
    end 
    result
  end
end