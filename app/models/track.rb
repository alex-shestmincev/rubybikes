class Track < ActiveRecord::Base

  belongs_to :bicycle

  validates :user_id, numericality: { only_integer: true }
  validates :bicycle_id, numericality: { only_integer: true }

  validate :time_end_cannot_be_higher_time_start

  scope :sorted_descending,-> {order("created_at DESC")}
end
