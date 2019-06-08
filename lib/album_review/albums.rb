class AlbumReview::Albums
  
  attr_accessor :name, :artist, :genre, :review_score, :review_date, :reviewer
  

  
  def self.all
    
    album_1 = self.new 
    album_1.name = "White Album"
    album_1.artist = "Beatles"
    
    album_2 = self.new 
    album_2.name = "Black Album"
    album_2.artist = "Jay-Z"
    
    [album_1, album_2]
  end
  
  
  
end