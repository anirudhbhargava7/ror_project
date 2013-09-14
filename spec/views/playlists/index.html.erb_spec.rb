require 'spec_helper'

describe "playlists/index" do
  before(:each) do
    assign(:playlists, [
      stub_model(Playlist,
        :playlist_name => "Playlist Name",
        :user_id => 1
      ),
      stub_model(Playlist,
        :playlist_name => "Playlist Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of playlists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Playlist Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
