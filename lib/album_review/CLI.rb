class AlbumReview::CLI 
  
  attr_accessor :albums
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    AlbumReview::Scraper.scrape_albums
    albums
    album_list
    puts "For the review score of an album, please enter a number from 1-10."
    get_albums
  end
  
  def albums 
    @albums = AlbumReview::Albums.all
  end
    
  def album_list
    @albums.each.with_index(1) do |album, index|
      puts "#{index}. #{album.title} by #{album.artist}"
    end
  end
  
  def get_albums
    input = nil
    input = gets.strip.downcase
    index = input.to_i -1
    if index.between?(0, 10)
      album = AlbumReview::Albums.all
    end
  end
      
  
  def review_list
    puts "REVIEW SCRAPE RESULTS"
  end

end



  