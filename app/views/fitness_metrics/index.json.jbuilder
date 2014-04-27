json.array!(@fitness_metrics) do |fitness_metric|
  json.extract! fitness_metric, :id, :metricsID, :clientID, :exerciseID, :metricsDate, :weight, :Age, :height, :sex, :fatPercent
  json.url fitness_metric_url(fitness_metric, format: :json)
end
