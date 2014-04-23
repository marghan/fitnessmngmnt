require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :ClientID => 1,
      :ClientName => "Client Name",
      :ClientAddress => "Client Address",
      :creditCardNo => 2,
      :emergencyContact => "Emergency Contact",
      :appointmentCount => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Client Name/)
    rendered.should match(/Client Address/)
    rendered.should match(/2/)
    rendered.should match(/Emergency Contact/)
    rendered.should match(/3/)
  end
end
