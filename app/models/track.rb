class Track < ActiveRecord::Base

  belongs_to :bicycle

  validates :user_id, numericality: { only_integer: true }
  validates :bicycle_id, numericality: { only_integer: true }


  scope :sorted_descending,-> {order("created_at DESC")}
end
