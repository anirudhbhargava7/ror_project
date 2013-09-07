class User < ActiveRecord::Base
  attr_accessible :email, :name, :password , :password_confirmation
validates :email ,:presence=>true, :uniqueness=>true, :allow_blank => true

validates :name ,:presence => true, :allow_blank => true

validates :password, :presence=>true, :allow_blank=>true, :confirmation =>true ,:length => {
	:minimum => 6,
	:allow_blank=>true 
}


validates :password_confirmation,:presence => true
end
