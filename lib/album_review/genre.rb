class AlbumReview::Genre 
  
  attr_accessor :albums
  
  def initialize()
    @albums = []
  end
  
  def add_albums
    @albums << album 
  end
  
  def self.all 
    puts "ALL GENRES"
  end
  
end