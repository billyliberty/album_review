class AlbumReview::Scraper
  
  def self.scrape_albums
    
    page = Nokogiri::HTML(open("https://pitchfork.com/reviews/best/albums/"))
    
    album_array = page.css("div.review")
    
    album_array.each do |album_info|
      attributes = {
        title: album_info.css("h2.review__title-album").text,
        artist: album_info.css("ul.review__title-artist").text,
        url: album_info.css("a").attribute("href").value
        }
        album = AlbumReview::Albums.new(attributes)
      end
    end
    
    def self.scrape_reviews
      
      page_reviews = Nokogiri::HTML(open(album.url))
      
      review_array = page_reviews.css("div.review-detail-page")
      
      review_array each do |review_info|
        attributes = {
          score: review_info.css("div.score-circle").text,
          full_review: review_info.css(".review-detail__article-content").text          
          }
          review = AlbumReview::Review.new(attributes)
       end
     end
  
end