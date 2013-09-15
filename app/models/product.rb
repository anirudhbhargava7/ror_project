class Product < ActiveRecord::Base
  attr_accessible :desc, :name, :audio

  has_attached_file :audio
end
