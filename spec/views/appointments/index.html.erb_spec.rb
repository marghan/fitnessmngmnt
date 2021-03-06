require 'spec_helper'

describe "appointments/index" do
  before(:each) do
    assign(:appointments, [
      stub_model(Appointment,
        :ApptID => 1,
        :clientID => 2,
        :trainerID => 3,
        :locationID => 4,
        :apptType => "Appt Type"
      ),
      stub_model(Appointment,
        :ApptID => 1,
        :clientID => 2,
        :trainerID => 3,
        :locationID => 4,
        :apptType => "Appt Type"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Appt Type".to_s, :count => 2
  end
end
