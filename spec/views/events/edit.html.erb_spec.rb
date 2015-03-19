require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :description => "MyText",
      :community_id => 1,
      :location => 1
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_community_id[name=?]", "event[community_id]"

      assert_select "input#event_location[name=?]", "event[location]"
    end
  end
end
