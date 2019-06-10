class AlbumReview::Scraper
  
  def self.scrape_albums
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css("div.review")
    
    album_array.each do |album_info|
      attributes = {
        title: album_info.css("h2.review__title-album").text,
        artist: album_info.css("ul.review__title-artist").text,
        url: album_info.css("a").attribute("href").value,
        }
        album = AlbumReview::Albums.new(attributes)
      end
    end
    
    def self.scrape_review
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css("div.review")
    
    album_array.each do |album_info|
      attributes = {
        title: album_info.css("h2.review__title-album").text,
        artist: album_info.css("ul.review__title-artist").text,
        }
        album = AlbumReview::Albums.new(attributes)
      end
    end
  
end