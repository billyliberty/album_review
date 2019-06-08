class AlbumReview::Albums
  
  attr_accessor :name, :artist, :genre, :score, :url
  
  def self.all
    self.scrape_albums
  end
  
  def self.scrape_albums
    albums = []
    albums << self.scrape_albums
    albums
  end
  
  def self.scrape_pitchfork
    page = Nokogiri::HTML(open(https://pitchfork.com/reviews/best/albums/))
    
    album=self.new 
    album.name = page.css("")
    album.artist
    
    album
  end

  
  
  
end