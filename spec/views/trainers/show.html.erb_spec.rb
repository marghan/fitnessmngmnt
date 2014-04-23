require 'spec_helper'

describe "trainers/show" do
  before(:each) do
    @trainer = assign(:trainer, stub_model(Trainer,
      :trainerID => 1,
      :trainerAddress => "Trainer Address",
      :trainerPhone => "Trainer Phone",
      :trainerEmail => "Trainer Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Trainer Address/)
    rendered.should match(/Trainer Phone/)
    rendered.should match(/Trainer Email/)
  end
end
