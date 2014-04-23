require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :ClientID => 1,
      :ClientName => "MyString",
      :ClientAddress => "MyString",
      :creditCardNo => 1,
      :emergencyContact => "MyString",
      :appointmentCount => 1
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_ClientID[name=?]", "client[ClientID]"
      assert_select "input#client_ClientName[name=?]", "client[ClientName]"
      assert_select "input#client_ClientAddress[name=?]", "client[ClientAddress]"
      assert_select "input#client_creditCardNo[name=?]", "client[creditCardNo]"
      assert_select "input#client_emergencyContact[name=?]", "client[emergencyContact]"
      assert_select "input#client_appointmentCount[name=?]", "client[appointmentCount]"
    end
  end
end
