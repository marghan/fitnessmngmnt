require 'spec_helper'

describe "flexibilities/show" do
  before(:each) do
    @flexibility = assign(:flexibility, stub_model(Flexibility,
      :exerciseType => "Exercise Type",
      :stretchDistance => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Exercise Type/)
    rendered.should match(/1.5/)
  end
end
