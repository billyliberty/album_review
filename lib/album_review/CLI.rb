class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    menu
  end
  
  def list_albums
    puts "PLACEHOLDER: Zuu by Denzel Curry"
  end
  
  def menu
    puts "Please enter: 'list' for a list of albums or 'genre' for a list of genres."
  end
  
end
  