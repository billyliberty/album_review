class AlbumReview::Scraper
  
  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    album_array = []
    
    page.css("div.review").each do |album|
      title =
      artist =
      genre =
      url =
      review_score =
      
      album = {:title => title, :artist => artist, :genre => genre, :url => url, :review_score = review_score}
      album_array << album
      end
    album_array
   end

end