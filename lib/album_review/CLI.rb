class AlbumReview::CLI 
  
  def call
    scrape_albums
    menu
  end
  
  def menu
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    puts "**If you'd like to see a list of the latest reviews of the best new albums, enter 'y' at the prompt or 'quit' to exit.**"
    input = gets.strip.downcase
    case input
    when 'y'
      album_list
      album_info
    when 'quit'
      goodbye
    else
      puts "Invalid entry!"
      menu
    end
  end
  
  def album_list
    puts "Pitchfork thinks these albums are great!"
    puts "------------------------------"
    AlbumReview::Albums.all.each.with_index(1) do |album, index|
      puts "#{index}. #{album.title} by #{album.artist}"
    puts "------------------------------"
    end
  end
  
  def album_info
    puts "Reveal the review score and the full review of the album by entering its number at the prompt!"
    input = gets.strip
    album = AlbumReview::Albums.all[input.to_i - 1]
    if 
      input == " "
      puts "Invalid entry! Please try again."
      puts ""
      album_info
    elsif
      AlbumReview::Scraper.scrape_reviews(album)
      puts ""
      puts "#{album.title} with a score of #{album.score}!"
      puts ""
      puts "Review: #{album.review}"
      puts ""
      menu
    elsif 
      input == "list"
      album_list
    else
      input == "quit"
      goodbye
    end
  end
  
  def scrape_albums
    AlbumReview::Scraper.scrape_albums
  end
  
  
  def goodbye
    puts "Until later!"
  end
  
end