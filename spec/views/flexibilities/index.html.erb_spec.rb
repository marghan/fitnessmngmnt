require 'spec_helper'

describe "flexibilities/index" do
  before(:each) do
    assign(:flexibilities, [
      stub_model(Flexibility,
        :exerciseType => "Exercise Type",
        :stretchDistance => 1.5
      ),
      stub_model(Flexibility,
        :exerciseType => "Exercise Type",
        :stretchDistance => 1.5
      )
    ])
  end

  it "renders a list of flexibilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Exercise Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
