require 'spec_helper'

describe "fitness_metrics/show" do
  before(:each) do
    @fitness_metric = assign(:fitness_metric, stub_model(FitnessMetric,
      :metricsID => 1,
      :clientID => 2,
      :exerciseID => 3,
      :weight => 1.5,
      :Age => 4,
      :height => 1.5,
      :sex => "Sex",
      :fatPercent => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
    rendered.should match(/Sex/)
    rendered.should match(/1.5/)
  end
end
