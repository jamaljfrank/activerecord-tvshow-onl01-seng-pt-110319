class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    Show.name.where(rating)
  end
end