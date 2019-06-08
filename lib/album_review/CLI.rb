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
  

  