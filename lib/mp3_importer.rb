require 'pry'

class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = files
  end
  
  def files
    result = []
    Dir.open(path).each do |filename|
      next if File.directory?(filename)
      result << filename
    end

    result
  end
  
  def import
    @files.each do |file|
      song = Song.new_by_filename(file)
    end 
  end
  
end 