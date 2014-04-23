require 'spec_helper'

describe "cardios/edit" do
  before(:each) do
    @cardio = assign(:cardio, stub_model(Cardio,
      :exerciseType => "MyString",
      :minutesPerMile => 1.5,
      :exerciseLevel => 1
    ))
  end

  it "renders the edit cardio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cardio_path(@cardio), "post" do
      assert_select "input#cardio_exerciseType[name=?]", "cardio[exerciseType]"
      assert_select "input#cardio_minutesPerMile[name=?]", "cardio[minutesPerMile]"
      assert_select "input#cardio_exerciseLevel[name=?]", "cardio[exerciseLevel]"
    end
  end
end
