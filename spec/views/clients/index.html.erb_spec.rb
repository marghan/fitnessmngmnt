require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :ClientID => 1,
        :ClientName => "Client Name",
        :ClientAddress => "Client Address",
        :creditCardNo => 2,
        :emergencyContact => "Emergency Contact",
        :appointmentCount => 3
      ),
      stub_model(Client,
        :ClientID => 1,
        :ClientName => "Client Name",
        :ClientAddress => "Client Address",
        :creditCardNo => 2,
        :emergencyContact => "Emergency Contact",
        :appointmentCount => 3
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    assert_select "tr>td", :text => "Client Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Emergency Contact".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
