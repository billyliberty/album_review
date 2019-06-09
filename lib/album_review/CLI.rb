class AlbumReview::CLI 
  
  attr_accessor :albums
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    scrape_albums
    menu
  end
  
  def menu
    puts "If you'd like to see a list of the latest reviews of the best new albums, please enter 'y' at the prompt."
    
    input = gets.strip.downcase
    
    case input
    when 'y'
      album_list
    when 'exit'
      goodbye
    else
      puts "Invalid entry!"
      menu
    end
  end
  
  def album_list
    puts "Pitchfork thinks these albums are great!"
    puts "------------------------------"
    @albums = AlbumReview::Albums.all
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.title} by #{album.artist}"
    end
  end
  
  def scrape_albums
    AlbumReview::Scraper.scrape_albums
  end
  
  def albums
    @albums = AlbumReview::Albums.all
  end
  
  def goodbye
    puts "Until later!"
  end

end



  