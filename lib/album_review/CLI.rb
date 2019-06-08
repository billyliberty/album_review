class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    menu
  end
  
  def list_albums
    puts "PLACEHOLDER: Zuu by Denzel Curry"
  end
  
  def genre_albums
    puts "1. Rap, 2. Rock, 3. Pop, 4. R&B, 5. Experimental (or 'menu' to return to the main menu)"
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
      when "5" 
        puts "EXPERIMENTAL"
      when "menu"
        menu
      when "quit"
        goodbye
      else ""
        puts "Selection not understood. Please enter the number of your selection again."
        genre_albums
    end
    
  end
  
  def goodbye
    puts "Until next time. Goodbye!"
  end
  
  def menu
    puts "To access reviews:"
    puts "Please enter 'list' for a list of albums or 'genre' for a list of genres. 
    (Enter 'quit' to exit at any point.)"
    input = gets.strip.downcase
    case input
      when "genre"
        genre_albums
      when "list"
        list_albums
      when "quit"
        goodbye
      else ""
        puts "Invalid selection. Please try again."
        menu
      end
    end
    
end
  

  