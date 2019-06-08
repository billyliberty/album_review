class AlbumReview::Genre 
  
  attr_accessor :albums
  
  def initialize()
    @albums = []
  end
  
  def add_albums
    @albums << album 
  end
  
end