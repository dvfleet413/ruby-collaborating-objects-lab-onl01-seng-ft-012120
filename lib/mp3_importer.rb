require 'pry'

class MP3Importer
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    binding.pry
    Dir.entries(@path)
  end
  
  def import 
    
  end
  
end