require 'spec_helper'

describe "fitness_metrics/index" do
  before(:each) do
    assign(:fitness_metrics, [
      stub_model(FitnessMetric,
        :metricsID => 1,
        :clientID => 2,
        :exerciseID => 3,
        :weight => 1.5,
        :Age => 4,
        :height => 1.5,
        :sex => "Sex",
        :fatPercent => 1.5
      ),
      stub_model(FitnessMetric,
        :metricsID => 1,
        :clientID => 2,
        :exerciseID => 3,
        :weight => 1.5,
        :Age => 4,
        :height => 1.5,
        :sex => "Sex",
        :fatPercent => 1.5
      )
    ])
  end

  it "renders a list of fitness_metrics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
