class Track < ActiveRecord::Base

  scope :sorted_descending,-> {order("created_at DESC")}
end
