class AlbumReview::Review
  
  attr_accessor :score, :full_review
  
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