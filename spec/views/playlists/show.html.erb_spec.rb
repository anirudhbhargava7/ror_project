require 'spec_helper'

describe "playlists/show" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :playlist_name => "Playlist Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Playlist Name/)
    rendered.should match(/1/)
  end
end
