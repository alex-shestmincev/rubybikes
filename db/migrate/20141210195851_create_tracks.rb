class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :bicycle_id
      t.integer :user_id
      t.integer :status
      t.integer :distance
      t.text :routes_points

      t.timestamps
    end
  end
end
