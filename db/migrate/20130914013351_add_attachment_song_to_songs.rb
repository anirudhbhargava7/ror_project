class AddAttachmentSongToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :song
    end
  end

  def self.down
    drop_attached_file :songs, :song
  end
end
