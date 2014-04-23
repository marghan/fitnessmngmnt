require 'spec_helper'

describe "cardios/new" do
  before(:each) do
    assign(:cardio, stub_model(Cardio,
      :exerciseType => "MyString",
      :minutesPerMile => 1.5,
      :exerciseLevel => 1
    ).as_new_record)
  end

  it "renders new cardio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cardios_path, "post" do
      assert_select "input#cardio_exerciseType[name=?]", "cardio[exerciseType]"
      assert_select "input#cardio_minutesPerMile[name=?]", "cardio[minutesPerMile]"
      assert_select "input#cardio_exerciseLevel[name=?]", "cardio[exerciseLevel]"
    end
  end
end
