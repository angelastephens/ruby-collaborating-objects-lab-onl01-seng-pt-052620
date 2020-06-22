require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  @@all =[]
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
 
  
  def artist_name=(name)
   self.artist =Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(filename)
    song = filename.chomp(".mp3").split(" - ")
    self.new(song[1])
  end
  
  
end