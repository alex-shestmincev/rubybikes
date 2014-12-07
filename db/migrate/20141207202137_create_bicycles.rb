class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :title
      t.string :key
      t.integer :status
      t.text :description
      t.integer :distance

      t.timestamps
    end
  end
end
