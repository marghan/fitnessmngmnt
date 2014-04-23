require 'spec_helper'

describe "trainers/new" do
  before(:each) do
    assign(:trainer, stub_model(Trainer,
      :trainerID => 1,
      :trainerAddress => "MyString",
      :trainerPhone => "MyString",
      :trainerEmail => "MyString"
    ).as_new_record)
  end

  it "renders new trainer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trainers_path, "post" do
      assert_select "input#trainer_trainerID[name=?]", "trainer[trainerID]"
      assert_select "input#trainer_trainerAddress[name=?]", "trainer[trainerAddress]"
      assert_select "input#trainer_trainerPhone[name=?]", "trainer[trainerPhone]"
      assert_select "input#trainer_trainerEmail[name=?]", "trainer[trainerEmail]"
    end
  end
end
