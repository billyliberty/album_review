class AlbumReview::Albums
  
  attr_accessor :title, :artist, :score, :url, :review
  
  @@all =[]
  
  def initialize(title, artist, url)
    @title = title
    @artist = artist
    @score = score
    @url = url
    @review = review
    
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end