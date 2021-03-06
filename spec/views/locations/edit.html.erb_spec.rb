require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :locationID => 1,
      :LocationAddress => "MyString",
      :LocationPhone => "MyString",
      :Outdoor => false
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "input#location_locationID[name=?]", "location[locationID]"
      assert_select "input#location_LocationAddress[name=?]", "location[LocationAddress]"
      assert_select "input#location_LocationPhone[name=?]", "location[LocationPhone]"
      assert_select "input#location_Outdoor[name=?]", "location[Outdoor]"
    end
  end
end
