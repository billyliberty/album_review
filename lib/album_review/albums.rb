class AlbumReview::Albums
  
  attr_accessor :title, :artist, :genre, :score, :url, :full_review
  
  @@all =[]
  
  def initialize(attributes)
    attributes.each do |k, v|
      self.send("#{k}=", v)
    end
    self.save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end
    
  
  