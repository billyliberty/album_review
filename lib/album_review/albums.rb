class AlbumReview::Albums
  
  attr_accessor :album_name, :artist, :genre, :review_score, :review_date, :reviewer
  
  @all = []
  
  def initialize ()
    @album_name = album_name
    @artist = artist
    @genre = genre
    @review_score = review_score
    @review_date = review_date
    @reviewer = reviewer
    @@all << self
  end
  
  def self.save
    @all
  end
  
end