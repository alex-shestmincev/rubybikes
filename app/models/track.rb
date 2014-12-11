class Track < ActiveRecord::Base

  belongs_to :bicycle

  validates :user_id, numericality: { only_integer: true }
  validates :bicycle_id, numericality: { only_integer: true }

  validate :time_end_cannot_be_higher_time_start

  def time_end_cannot_be_higher_time_start
    if time_end.present? && time_start.present? && time_end <= time_start
      errors.add(:time_end, 'Время конца должно быть больше времени начала')
    end
  end

  scope :sorted_descending,-> {order("created_at DESC")}
end
