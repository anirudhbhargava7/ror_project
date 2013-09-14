class Playlist < ActiveRecord::Base
  attr_accessible :playlist_name, :user_id
  belongs_to :user 
  has_many :songs
  validates :playlist_name , :presence =>true
end
