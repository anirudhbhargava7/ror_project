require 'spec_helper'

describe "Users" do

before { @user = User.new(name: "Mac", email: "ubuntu@example.com" , password: "aaaaaa" , password_confirmation: "aaaaaa") }


 
describe "Register" do

  it "should have the content 'Register'" do
    visit '/register'
    expect(page).to have_content('Register')
  end
end

describe "Register User" do
 describe  "/register"
it "should register a user" do  

   User.create!(:name => "Mac" , :email => "ubuntu@example.com" , :password => "aaaaaa" , password_confirmation: "aaaaaa")
   get register_path
   response.body.should include(register_path)
 end


end




end
