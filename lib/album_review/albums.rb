class AlbumReview::Albums
  
  attr_accessor :title, :artist, :genre, :score, :url
  
  def initialize(attributes)
    attributes.each do |k, v|
      self.send("#{k}=", v)
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
    
  
  