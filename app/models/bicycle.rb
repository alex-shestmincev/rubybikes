class Bicycle < ActiveRecord::Base

  has_many :tracks, foreign_key: :bicycle_id

  has_attached_file :avatar, :styles => { :medium => "500x300>", :thumb => "500x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



  scope :sorted_descending,-> {order("created_at DESC")}
end
