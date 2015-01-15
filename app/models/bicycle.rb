class Bicycle < ActiveRecord::Base

  has_many :tracks, foreign_key: :bicycle_id

  has_attached_file :avatar, :styles => { :medium => "500x300>", :thumb => "500x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true, length: { in: 2...15 }
  validates :key, presence: true, format: { with: /\A[a-zA-Z0-9_]{2,255}\z/, message: :bad_key}
  validates :description, presence: true, length: { in: 2...255 }
  validates :distance, :numericality => true, :allow_nil => true

  validates :status, presence: true, inclusion: { in: (1..3).to_a }

  scope :sorted_descending,-> {order("created_at DESC")}
end
