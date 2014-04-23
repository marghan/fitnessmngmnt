require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :paymentID => 1,
        :paymentAmount => 1.5,
        :paymentMethod => "Payment Method",
        :invoiceID => 2
      ),
      stub_model(Payment,
        :paymentID => 1,
        :paymentAmount => 1.5,
        :paymentMethod => "Payment Method",
        :invoiceID => 2
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Payment Method".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
