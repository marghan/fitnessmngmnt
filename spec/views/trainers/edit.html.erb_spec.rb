require 'spec_helper'

describe "trainers/edit" do
  before(:each) do
    @trainer = assign(:trainer, stub_model(Trainer,
      :trainerID => 1,
      :trainerAddress => "MyString",
      :trainerPhone => "MyString",
      :trainerEmail => "MyString"
    ))
  end

  it "renders the edit trainer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trainer_path(@trainer), "post" do
      assert_select "input#trainer_trainerID[name=?]", "trainer[trainerID]"
      assert_select "input#trainer_trainerAddress[name=?]", "trainer[trainerAddress]"
      assert_select "input#trainer_trainerPhone[name=?]", "trainer[trainerPhone]"
      assert_select "input#trainer_trainerEmail[name=?]", "trainer[trainerEmail]"
    end
  end
end
