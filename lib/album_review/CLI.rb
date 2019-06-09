class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    menu
  end
  
  def list_albums
    @albums = AlbumReview::Albums.all
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.name} - #{album.artist}"
    end
  end
  
  def menu_albums
    list_albums
    input = gets.strip.downcase
    case input
      when input.to_i > 0 
        puts @albums[input.to_i -1]
    end
  end
    
  end
  
  def goodbye
    puts "Until next time. Goodbye!"
  end
  
  def menu
    puts "To access reviews:"
    puts "Please enter 'list' for a list of albums. 
    (Enter 'quit' to exit at any point.)"
    input = gets.strip.downcase
    
  
end



  