class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def most_popular_show
    Show.name.where(rating: highest_rating)
    
  end
end