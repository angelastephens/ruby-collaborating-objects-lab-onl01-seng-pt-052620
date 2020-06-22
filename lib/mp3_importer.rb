class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path=path
  end
  
  
  
  def files
    Dir.entries("your/folder").select {|f| File.file? f}
    
  end
  
  
  
end