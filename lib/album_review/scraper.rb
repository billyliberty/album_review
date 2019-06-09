class AlbumReview::Scraper
  
  def self.scrape_albums
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css(".div review")
    
    album_array.each do |album_info|
      attributes = {
        album.name = page.css("h2.review__title-album").text
        album.artist = page.css("ul.review__title-artist").text
        }
      end
    end
    album = AlbumReview::Albums.new(attributes)
  end
  
end