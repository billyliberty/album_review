class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    menu
  end
  
  def list_albums
    puts "PLACEHOLDER: Zuu by Denzel Curry"
  end
  
  def genre_albums
    puts "1. Rap, 2. Rock, 3. Pop, 4. R&B, 5. Experimental"
    input = gets.strip.downcase
    case input
      when "1" 
        puts "RAP"
      when "2"
        puts "ROCK"
      when "3" 
        puts "POP"
      when "4" 
        puts "R&B"
      when "6" 
        puts "EXPERIMENTAL"
      else ""
        puts "I don't understand your selection. Please try again."
        genre_albums
    end
    
  end
  
  def goodbye
    puts "Goodbye!"
  end
  
  def menu
    puts "Please enter: 'list' for a list of albums or 'genre' for a list of genres. Enter 'quit' to exit."
    input = gets.strip.downcase
    case input
      when "genre"
        genre_albums
      when "list"
        list_albums
      when "quit"
        goodbye
      end
    end
end
  

  