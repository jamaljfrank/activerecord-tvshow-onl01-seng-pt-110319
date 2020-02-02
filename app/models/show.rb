class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    s = Show.where(rating: highest_rating)
    s
  end
end