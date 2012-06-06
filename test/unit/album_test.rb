require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  user = User.new(:email => 'usuario@dominio.com', :name => 'Nombre de usuario', :password => 'password01', :password_confirmation => 'password01')

  test "Album creation" do
    album = Album.new(:user => user, :band => 'The Beatles', :title => 'Revolver', :year => 1965)
    assert album.save
    if !album.new_record?
      assert album.destroy
    else
      skip "Album not saved!"
    end
  end
  
  test "wrong Band on album creation" do
    album = Album.new(:user => user, :band => '-', :title => 'Revolver', :year => 1965)
    assert !album.save
  end

end
