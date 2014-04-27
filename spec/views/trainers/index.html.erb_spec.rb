require 'spec_helper'

describe "trainers/index" do
  before(:each) do
    assign(:trainers, [
      stub_model(Trainer,
        :trainerID => 1,
        :trainerAddress => "Trainer Address",
        :trainerPhone => "Trainer Phone",
        :trainerEmail => "Trainer Email"
      ),
      stub_model(Trainer,
        :trainerID => 1,
        :trainerAddress => "Trainer Address",
        :trainerPhone => "Trainer Phone",
        :trainerEmail => "Trainer Email"
      )
    ])
  end

  it "renders a list of trainers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Trainer Address".to_s, :count => 2
    assert_select "tr>td", :text => "Trainer Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Trainer Email".to_s, :count => 2
  end
end
