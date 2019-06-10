class AlbumReview::Scraper
  
  PITCHFORK_URL = "https://pitchfork.com"
  
  def self.scrape_albums
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css("div.review")
    
    album_array.each do |album_info|
      attributes = {
        title: album_info.css("h2.review__title-album").text,
        artist: album_info.css("ul.review__title-artist").text,
        url: album_info.css("a").attr("href").value
        }
        album = AlbumReview::Albums.new(attributes)
      end
    end
    
  def self.scrape_reviews
    page = Nokogiri::HTML(open(PITCHFORK_URL + album.url))
    
    attributes = {
      score: doc.css("div.score-circle").text.strip
      }
    album = AlbumReview::Albums.new(attributes)
  end
  
end