require 'spec_helper'

describe "strengths/new" do
  before(:each) do
    assign(:strength, stub_model(Strength,
      :exerciseType => "MyString",
      :maxRepetitions => 1,
      :exerciseWeight => 1.5
    ).as_new_record)
  end

  it "renders new strength form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", strengths_path, "post" do
      assert_select "input#strength_exerciseType[name=?]", "strength[exerciseType]"
      assert_select "input#strength_maxRepetitions[name=?]", "strength[maxRepetitions]"
      assert_select "input#strength_exerciseWeight[name=?]", "strength[exerciseWeight]"
    end
  end
end
