class CreateSongplaylistmaps < ActiveRecord::Migration
  def change
    create_table :songplaylistmaps do |t|
      t.integer :playlist_id
      t.integer :song_id

      t.timestamps
    end
  end
end
