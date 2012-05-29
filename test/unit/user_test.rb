require 'test_helper'

class UserTest < ActiveSupport::TestCase
    
  test "user creation" do
    user = User.new(:email => 'usuario@dominio.com', :name => 'Nombre de usuario', :password => 'password01', :password_confirmation => 'password01')
    assert user.save
    if !user.new_record?
      assert user.destroy
    else
      skip "User not saved"
    end
  end
  
  test "wrong password user creation" do
    user = User.new(:email => 'usuario@dominio.com', :name => 'Nombre de usuario', :password => 'password01', :password_confirmation => 'password')
    assert !user.save
  end

  test "wrong email user creation" do
    user = User.new(:email => 'qwerty@qwerty', :name => 'Nombre de usuario', :password => 'password01', :password_confirmation => 'password01')
    assert !user.save
  end
  
end
