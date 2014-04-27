require 'spec_helper'

describe "fitness_metrics/new" do
  before(:each) do
    assign(:fitness_metric, stub_model(FitnessMetric,
      :metricsID => 1,
      :clientID => 1,
      :exerciseID => 1,
      :weight => 1.5,
      :Age => 1,
      :height => 1.5,
      :sex => "MyString",
      :fatPercent => 1.5
    ).as_new_record)
  end

  it "renders new fitness_metric form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fitness_metrics_path, "post" do
      assert_select "input#fitness_metric_metricsID[name=?]", "fitness_metric[metricsID]"
      assert_select "input#fitness_metric_clientID[name=?]", "fitness_metric[clientID]"
      assert_select "input#fitness_metric_exerciseID[name=?]", "fitness_metric[exerciseID]"
      assert_select "input#fitness_metric_weight[name=?]", "fitness_metric[weight]"
      assert_select "input#fitness_metric_Age[name=?]", "fitness_metric[Age]"
      assert_select "input#fitness_metric_height[name=?]", "fitness_metric[height]"
      assert_select "input#fitness_metric_sex[name=?]", "fitness_metric[sex]"
      assert_select "input#fitness_metric_fatPercent[name=?]", "fitness_metric[fatPercent]"
    end
  end
end
