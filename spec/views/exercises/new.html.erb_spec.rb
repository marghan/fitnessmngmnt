require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :exerciseID => 1,
      :exerciseType => "MyString",
      :exerciseName => "MyString",
      :muscleGroup => "MyString",
      :equipment => "MyString"
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercises_path, "post" do
      assert_select "input#exercise_exerciseID[name=?]", "exercise[exerciseID]"
      assert_select "input#exercise_exerciseType[name=?]", "exercise[exerciseType]"
      assert_select "input#exercise_exerciseName[name=?]", "exercise[exerciseName]"
      assert_select "input#exercise_muscleGroup[name=?]", "exercise[muscleGroup]"
      assert_select "input#exercise_equipment[name=?]", "exercise[equipment]"
    end
  end
end
