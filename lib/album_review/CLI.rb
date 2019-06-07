class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    list_albums
    menu
  end
  
  def list_albums
    puts "Zuu by Denzel Curry"
  end
  
  def menu
    puts "Enter the number of the album for that album's review score."
  end
  
end
  