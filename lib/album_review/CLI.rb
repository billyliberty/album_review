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
      puts "#{album.title} with a score of:"
      score
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
  
  def reviews
    @reviews = AlbumReview::Review.all
  end
  
  def read_review
    puts "Would you like to read the full review?"
    puts "If so, enter 'y' at the prompt or 'list' to return to the list. Enter 'quit' to quit."
    input = gets.strip.downcase
    case input
      when "y"
        full_review
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
  
  def score 
    puts "8.5"
  end
  
  def full_review
    puts "Natalie Mering’s fourth album is a grand, sentimental ode to living and loving in the shadow of doom. It is her most ambitious and complex work yet.

In the face of catastrophe, Natalie Mering always finds serenity. Throughout her fourth record as Weyes Blood, tides are surging, trees are falling, the internet is ruining romance, capitalism is pushing workers to the brink of exhaustion, and reality is breaking her heart. In the wake of all this, Mering continues to search the stars for salvation. Belief—in oneself, in another, in myths—is Titanic Rising’s only request. “I want to make sure everybody feels like they deserve to be alive,” she told Pitchfork. “I hope you could have a smile during the apocalypse.” Building on the psychedelic chamber-folk of 2016’s Front Row Seat to Earth, these convictions push the 30-year-old songwriter towards her most ambitious and complex work yet.

Titanic Rising approaches these modern-day problems through a distinctly sentimental lens. Mering has referred to herself as a “nostalgic futurist,” and here she leans into that title by examining the strange ways technology has shaped modern romance through the earnest lyrics and golden, gigantic arrangements of 1970s pop songwriters. But unlike Joni Mitchell or the Carpenters, whose love affairs were clouded by plain old anxiety and desperation, Mering’s love affairs are clouded by algorithms. As she seeks true love on the jaunty “Everyday,” Mering’s desire for companionship bursts forth like a geyser. When she bellows “I need a love every day” over a baroque clavinet, it’s with a herculean determination.

Even at her most optimistic, Mering grounds herself in reality. On the majestic opener “A Lot’s Gonna Change,” Mering yearns to return to the purity of childhood, a time when the world seemed to swell with wonder and possibility. But she cuts her fantasy short and admits that since progress is impossible to escape, why not focus on what matters right now? Later on “Mirror Forever,” she is her most blunt: “No one’s ever gonna give you a trophy/For all the pain and things you’ve been through/No one knows but you.” This advice comes off as almost gravely urgent and upholds Titanic Rising’s acceptance of difficult truths.

Midway through the album, Titanic Rising moves into the murky realm of the subconscious through its instrumental title track, like a sunbeam finding its way to the ocean floor. On the subsequent “Movies,” Mering sounds as if she is singing from the album cover’s sunken bedroom, her voice wobbly and distended. As phosphorescent synthesizers swirl around her, Mering ponders cinema’s emotional shaping of our collective psyche, ultimately finding acceptance in the fantasy. “Movies” might be a melodramatic outlier on the record, but the song exemplifies the way Mering considers the world: as a constant renegotiation of self and place. If the record’s first half was built on swooning dreams, the second half faces the world with a melancholic but hopeful heart.

The truth that lies beneath Titanic Rising is that love blossoms and love wilts. This law of nature is mirrored in the emotional arc introduced by “A Lot’s Gonna Change.” “Everyone’s broken now/And no one knows just how,” she murmurs on the monumental “Wild Time.” The songs are more stoic and elegant even when Mering sings of apocalyptic imagery like a “million people burnin’.”

But Mering’s business is not of misery, but of faith. She suggests dystopian images, but insists that with action, beautiful results are possible. Titanic Rising comes full circle with the instrumental closer “Nearer to Thee,” which borrows the string arrangement from “A Lot’s Gonna Change.” The song’s title alludes to the hymn that the Titanic’s house band supposedly played as the ship sank. Here, as it was then, Weyes Blood can’t help but offer one last breath of hope as she gazes towards an uncertain future."
  end
end



  