class AlbumReview::Scraper
  
  def self.scrape_albums
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css(".div review")
    
    album_array.each do |album_info|
      attributes = {
        album.name: album_info.css("h2.review__title-album").text,
        album.artist: album_info.css("ul.review__title-artist").text,
        }
        album = AlbumReview::Albums.new(attributes)
      end
    end
  
end