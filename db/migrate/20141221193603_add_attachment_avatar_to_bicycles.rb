class AddAttachmentAvatarToBicycles < ActiveRecord::Migration
  def self.up
    change_table :bicycles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bicycles, :avatar
  end
end
