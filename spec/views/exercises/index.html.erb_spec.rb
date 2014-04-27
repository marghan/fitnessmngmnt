require 'spec_helper'

describe "exercises/index" do
  before(:each) do
    assign(:exercises, [
      stub_model(Exercise,
        :exerciseID => 1,
        :exerciseType => "Exercise Type",
        :exerciseName => "Exercise Name",
        :muscleGroup => "Muscle Group",
        :equipment => "Equipment"
      ),
      stub_model(Exercise,
        :exerciseID => 1,
        :exerciseType => "Exercise Type",
        :exerciseName => "Exercise Name",
        :muscleGroup => "Muscle Group",
        :equipment => "Equipment"
      )
    ])
  end

  it "renders a list of exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Exercise Type".to_s, :count => 2
    assert_select "tr>td", :text => "Exercise Name".to_s, :count => 2
    assert_select "tr>td", :text => "Muscle Group".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment".to_s, :count => 2
  end
end
