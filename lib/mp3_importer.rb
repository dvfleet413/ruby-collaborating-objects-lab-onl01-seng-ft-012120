require 'pry'

class MP3Importer
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    files= Dir.entries(@path)
    files.select {|file| file.end_with?(".mp3")
  end
  
  def import 
    
  end
  
end