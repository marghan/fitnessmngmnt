require 'spec_helper'

describe "payments/show" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :paymentID => 1,
      :paymentAmount => 1.5,
      :paymentMethod => "Payment Method",
      :invoiceID => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/Payment Method/)
    rendered.should match(/2/)
  end
end
