require 'spec_helper'

describe AlbumsController do
  
  login_user
  render_views
  
  it "allows users to view their library" do
    get :index
    response.status.should eq(200)
  end
  
  it "allows users to create albums" do
    album = Album.new( :user => subject.current_user,
                       :band => 'The Beatles',
                       :title => 'Revolver',
                       :year => 1965)
    album.save
    get :show, :id => album.id
    response.status.should eq(200)
  end

  it "allows users to search in their library" do
    Album.create( :user => subject.current_user,
                  :band => 'The Beatles',
                  :title => 'Revolver',
                  :year => 1965)
    get :search, :querystring => 'Beatles'
    response.body.should =~ /<li class="album">/
  end

end
