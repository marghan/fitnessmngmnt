require 'spec_helper'

describe "strengths/edit" do
  before(:each) do
    @strength = assign(:strength, stub_model(Strength,
      :exerciseType => "MyString",
      :maxRepetitions => 1,
      :exerciseWeight => 1.5
    ))
  end

  it "renders the edit strength form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", strength_path(@strength), "post" do
      assert_select "input#strength_exerciseType[name=?]", "strength[exerciseType]"
      assert_select "input#strength_maxRepetitions[name=?]", "strength[maxRepetitions]"
      assert_select "input#strength_exerciseWeight[name=?]", "strength[exerciseWeight]"
    end
  end
end
