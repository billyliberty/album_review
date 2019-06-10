class AlbumReview::Albums
  
  attr_accessor :title, :artist, :genre, :score, :url, :full_review
  
  @@all =[]
  
  def initialize(title, artist, url)
    @title = title
    @artist = artist
    @genre = genre
    @score = score
    @url = url
    @full_review = full_review
    
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end