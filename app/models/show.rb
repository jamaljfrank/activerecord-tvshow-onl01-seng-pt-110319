class Show < ActiveRecord::Base
  
  def highest_rating
    Show.rating.maximum
  end
end