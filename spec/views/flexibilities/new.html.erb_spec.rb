require 'spec_helper'

describe "flexibilities/new" do
  before(:each) do
    assign(:flexibility, stub_model(Flexibility,
      :exerciseType => "MyString",
      :stretchDistance => 1.5
    ).as_new_record)
  end

  it "renders new flexibility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", flexibilities_path, "post" do
      assert_select "input#flexibility_exerciseType[name=?]", "flexibility[exerciseType]"
      assert_select "input#flexibility_stretchDistance[name=?]", "flexibility[stretchDistance]"
    end
  end
end
