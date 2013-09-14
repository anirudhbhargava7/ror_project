class Song < ActiveRecord::Base
  attr_accessible :song_genre, :song_name, :song

  has_attached_file :song

  belongs_to :playlist
attr_accessor :song_file_name
  validates :song_name, :presence => true, :uniqueness => true
end
