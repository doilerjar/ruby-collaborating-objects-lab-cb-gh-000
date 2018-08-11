class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = files(path)
  end
  
  def files(path)
    Dir.open(Dir.path).each do |filename|
      next if File.directory?(filename)
      
    end
  end
  
  def import
    
  end
  
end 