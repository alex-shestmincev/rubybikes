class Bicycle < ActiveRecord::Base

  has_many :tracks, foreign_key: :bicycle_id



  scope :sorted_descending,-> {order("created_at DESC")}
end
