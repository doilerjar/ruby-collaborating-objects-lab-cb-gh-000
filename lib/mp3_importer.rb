require 'pry'

class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = files(path)
  end
  
  def path
    @path
  end
  
  def files(path)
    result = []
    Dir.open(Dir.path).each do |filename|
      next if File.directory?(filename)
      result << filename
    end
    # binding.pry
    result
  end
  
  def import
    
  end
  
end 