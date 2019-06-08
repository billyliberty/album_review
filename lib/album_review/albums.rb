class AlbumReview::Albums
  
  attr_accessor :album_name, :artist, :genre, :review_score, :review_date, :reviewer
  
  @@all = []
  
  def initialize ()
    @album_name = album_name
    @artist = artist
    @genre = genre
    @review_score = review_score
    @review_date = review_date
    @reviewer = reviewer
    @@all << self
  end
  
  def self.all
    album_1 = self.new 
    album_1.album_name = "White Album"
    
    album_2 = self.new 
    album_2.album_name = "Black Album"
    
    [album_1, album_2]
  end
  
  def self.save
    @@all
  end
  
end