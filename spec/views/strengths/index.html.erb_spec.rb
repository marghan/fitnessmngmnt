require 'spec_helper'

describe "strengths/index" do
  before(:each) do
    assign(:strengths, [
      stub_model(Strength,
        :exerciseType => "Exercise Type",
        :maxRepetitions => 1,
        :exerciseWeight => 1.5
      ),
      stub_model(Strength,
        :exerciseType => "Exercise Type",
        :maxRepetitions => 1,
        :exerciseWeight => 1.5
      )
    ])
  end

  it "renders a list of strengths" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Exercise Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
