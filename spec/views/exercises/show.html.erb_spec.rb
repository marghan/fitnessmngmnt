require 'spec_helper'

describe "exercises/show" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :exerciseID => 1,
      :exerciseType => "Exercise Type",
      :exerciseName => "Exercise Name",
      :muscleGroup => "Muscle Group",
      :equipment => "Equipment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Exercise Type/)
    rendered.should match(/Exercise Name/)
    rendered.should match(/Muscle Group/)
    rendered.should match(/Equipment/)
  end
end
