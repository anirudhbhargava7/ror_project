class Playlist < ActiveRecord::Base
  attr_accessible :playlist_name, :user_id
  belongs_to :user 
  validates :playlist_name , :presence =>true
end
