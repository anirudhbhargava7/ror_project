class User < ActiveRecord::Base
  attr_accessible :email, :name, :password , :password_confirmation
    before_save { self.email = email.downcase }
has_one :MemberProfile  

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email ,:presence=>true, :uniqueness=>{ case_sensitive: false } , :format =>{with: VALID_EMAIL_REGEX }

validates :name ,:presence => true

validates :password, :presence=>true,:confirmation =>true,:length => {	:minimum => 6 }


validates :password_confirmation,:presence => true
end
