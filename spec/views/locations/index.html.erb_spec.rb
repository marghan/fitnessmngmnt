require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :locationID => 1,
        :LocationAddress => "Location Address",
        :LocationPhone => "Location Phone",
        :Outdoor => false
      ),
      stub_model(Location,
        :locationID => 1,
        :LocationAddress => "Location Address",
        :LocationPhone => "Location Phone",
        :Outdoor => false
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location Address".to_s, :count => 2
    assert_select "tr>td", :text => "Location Phone".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
