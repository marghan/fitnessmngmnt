require 'spec_helper'

describe "payments/new" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :paymentID => 1,
      :paymentAmount => 1.5,
      :paymentMethod => "MyString",
      :invoiceID => 1
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payments_path, "post" do
      assert_select "input#payment_paymentID[name=?]", "payment[paymentID]"
      assert_select "input#payment_paymentAmount[name=?]", "payment[paymentAmount]"
      assert_select "input#payment_paymentMethod[name=?]", "payment[paymentMethod]"
      assert_select "input#payment_invoiceID[name=?]", "payment[invoiceID]"
    end
  end
end
