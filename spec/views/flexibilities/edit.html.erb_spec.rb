require 'spec_helper'

describe "flexibilities/edit" do
  before(:each) do
    @flexibility = assign(:flexibility, stub_model(Flexibility,
      :exerciseType => "MyString",
      :stretchDistance => 1.5
    ))
  end

  it "renders the edit flexibility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", flexibility_path(@flexibility), "post" do
      assert_select "input#flexibility_exerciseType[name=?]", "flexibility[exerciseType]"
      assert_select "input#flexibility_stretchDistance[name=?]", "flexibility[stretchDistance]"
    end
  end
end
