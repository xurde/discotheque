require 'spec_helper'
require 'user'

describe "user registration" do
  it "allows new users to register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Email",                 :with => "alindeman@example.com"
    fill_in "Password",              :with => "ilovegrapes"
    fill_in "Password confirmation", :with => "ilovegrapes"

    click_button "Sign up"

    response.should be_success
  end
end

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "alindeman@example.com",
                       :password => "ilovegrapes")

    visit "/users/sign_in"

    fill_in "Email",    :with => "alindeman@example.com"
    fill_in "Password", :with => "ilovegrapes"

    click_button "Sign in"

    response.should be_success
  end
end


describe "user sign out" do
  it "allows users to sign out after they have signed in" do

    visit "/users/sign_out"
    
    response.should be_success
  end
end

# describe UsersController do
# end
