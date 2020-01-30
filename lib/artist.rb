require 'pry'
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
    binding.pry
    Song.all.select {|song| song.artist = self}
  end
  
  def self.find_or_create_by_name(name)
    
  end
end