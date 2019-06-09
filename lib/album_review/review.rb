class AlbumReview::Review
  
  attr_accessor :albums
  
  def initialize()
    @albums = []
  end
  
  def add_albums
    @albums << album 
  end
  
  def self.all 
    puts ""
  end
  
end