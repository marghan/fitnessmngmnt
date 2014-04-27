require 'spec_helper'

describe "cardios/show" do
  before(:each) do
    @cardio = assign(:cardio, stub_model(Cardio,
      :exerciseType => "Exercise Type",
      :minutesPerMile => 1.5,
      :exerciseLevel => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Exercise Type/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
