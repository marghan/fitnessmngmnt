require 'spec_helper'

describe "strengths/show" do
  before(:each) do
    @strength = assign(:strength, stub_model(Strength,
      :exerciseType => "Exercise Type",
      :maxRepetitions => 1,
      :exerciseWeight => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Exercise Type/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
