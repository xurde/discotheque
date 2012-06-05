class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.string :band, :limit => 160
      t.string :title, :limit => 160
      t.integer :year
      t.has_attached_file :cover
      t.timestamps
    end
  end
end
