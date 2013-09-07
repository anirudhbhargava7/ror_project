class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :playlists

      t.timestamps
    end
  end
end
