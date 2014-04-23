require 'spec_helper'

describe "cardios/index" do
  before(:each) do
    assign(:cardios, [
      stub_model(Cardio,
        :exerciseType => "Exercise Type",
        :minutesPerMile => 1.5,
        :exerciseLevel => 1
      ),
      stub_model(Cardio,
        :exerciseType => "Exercise Type",
        :minutesPerMile => 1.5,
        :exerciseLevel => 1
      )
    ])
  end

  it "renders a list of cardios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Exercise Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
