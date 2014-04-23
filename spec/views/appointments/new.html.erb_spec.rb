require 'spec_helper'

describe "appointments/new" do
  before(:each) do
    assign(:appointment, stub_model(Appointment,
      :ApptID => 1,
      :clientID => 1,
      :trainerID => 1,
      :locationID => 1,
      :apptType => "MyString"
    ).as_new_record)
  end

  it "renders new appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", appointments_path, "post" do
      assert_select "input#appointment_ApptID[name=?]", "appointment[ApptID]"
      assert_select "input#appointment_clientID[name=?]", "appointment[clientID]"
      assert_select "input#appointment_trainerID[name=?]", "appointment[trainerID]"
      assert_select "input#appointment_locationID[name=?]", "appointment[locationID]"
      assert_select "input#appointment_apptType[name=?]", "appointment[apptType]"
    end
  end
end
