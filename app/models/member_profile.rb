class MemberProfile < ActiveRecord::Base
  attr_accessible :age, :desc, :email, :location

   belongs_to :user , class_name: "User" , foreign_key:"email" 

   validates :age , numericality: {only_integer: true}
   validates :location , :presence=>true 


end
