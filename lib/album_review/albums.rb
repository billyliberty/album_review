class AlbumReview::Albums
  
  attr_accessor :name, :artist, :genre, :score, :url
  
  def self.all
    albums = []
    albums << self.scrape_albums
    albums
  end
  
  def self.scrape_albums
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css(".div review")
    
    album_array.each do |album_info|
      attributes = {
        album.name = page.css("h2.review__title-album").text.strip
        album.artist = page.css("ul.review__title-artist").text.strip
        }
    album = AlbumReview::Album.new(attributes)
  end
  
end
    
  
  