class AlbumReview::Scraper
  
  PITCHFORK_URL = "https://pitchfork.com"
  
  def self.scrape_albums
    albums = []
    html = open("https://pitchfork.com/reviews/best/albums/")
    doc = Nokogiri::HTML(html)
    
    doc.css("div.review").each do |album_info|
        title = album_info.css("h2.review__title-album").text.strip
        artist = album_info.css("ul.review__title-artist").text.strip
        url = album_info.css("a").attr("href").value
        album = AlbumReview::Albums.new(title, artist, url)
        album.save
      end
    end
    
  def self.scrape_reviews(album)
    html = open(PITCHFORK_URL + album.url)
    doc = Nokogiri::HTML(html)
    
    album.score = doc.css("div.score-circle").text.strip
    album.review = doc.css(".review-detail__article-content").text.strip
  end
  
end