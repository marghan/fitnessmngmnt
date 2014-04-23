require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :locationID => 1,
      :LocationAddress => "Location Address",
      :LocationPhone => "Location Phone",
      :Outdoor => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Location Address/)
    rendered.should match(/Location Phone/)
    rendered.should match(/false/)
  end
end
