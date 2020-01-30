require 'pry'

class MP3Importer
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    files= Dir.entries(@path)
    files.select {|file| 
    binding.pry
  end
  
  def import 
    
  end
  
end