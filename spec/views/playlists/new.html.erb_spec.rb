require 'spec_helper'

describe "playlists/new" do
  before(:each) do
    assign(:playlist, stub_model(Playlist,
      :playlist_name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new playlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", playlists_path, "post" do
      assert_select "input#playlist_playlist_name[name=?]", "playlist[playlist_name]"
      assert_select "input#playlist_user_id[name=?]", "playlist[user_id]"
    end
  end
end
