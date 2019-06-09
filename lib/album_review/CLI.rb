class AlbumReview::CLI 
  
  def call
    puts "Welcome to the best new albums as reviewed by Pitchfork!"
    puts "--------------------------"
    puts "Every review collated for your eyes to read so you can treat your ears!"
    puts "--------------------------"
    album_list
  end
  
  def album_list
    AlbumReview::Albums.all.each do |index, album|
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



  