class User < ActiveRecord::Base
  attr_accessible :email, :name, :password , :password_confirmation
validates :email ,:presence=>true, :uniqueness=>true

validates :name ,:presence => true

validates :password, :presence=>true,:confirmation =>true ,:length => {
	:minimum => 6
}


validates :password_confirmation,:presence => true
end
