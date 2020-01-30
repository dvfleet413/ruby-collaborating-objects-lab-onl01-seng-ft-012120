require 'pry'

class MP3Importer
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    Dir.entries(@path).select {|file| file.end_with?(".mp3")}
  end
  
  def import 
    
  end
  
end