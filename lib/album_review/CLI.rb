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
    puts "**If you'd like to see a list of the latest reviews of the best new albums, enter 'y' at the prompt.**"
    
    input = gets.strip.downcase
    
    case input
    when 'y'
      album_list
      album_info
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
  
  def album_info
    puts "Reveal the review score of the album by entering its number at the prompt!"
    input = gets.strip
    index = input.to_i - 1
    if index.between?(0,11)
      album = @albums[index]
      puts "************"
      puts "#{album.title} with a score of #{review.score} and URL of #{album.url}!"
      puts "************"
      read_review
    elsif input == "quit"
      goodbye
    else
      puts "Invalid entry!"
      album_info
    end
  end
  
  def scrape_albums
    AlbumReview::Scraper.scrape_albums
  end
  
  def albums
    @albums = AlbumReview::Albums.all
  end
  
  def read_review
    puts "Would you like to read the full review?"
    puts "If so, enter 'y' at the prompt or 'list' to return to the list. Enter 'quit' to quit."
    input = gets.strip.downcase
    case input
      when "y"
        puts "REVIEW"
      when "list"
        album_list
        album_info
      when "quit"
        goodbye
      else
        puts "Invalid entry!"
        read_review
      end
    end
  
  def goodbye
    puts "Until later!"
  end

end



  