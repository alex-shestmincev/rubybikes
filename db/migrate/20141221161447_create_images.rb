class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :type
      t.integer :type_id
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
