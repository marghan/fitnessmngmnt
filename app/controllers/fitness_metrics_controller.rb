class FitnessMetricsController < ApplicationController
  before_action :set_fitness_metric, only: [:show, :edit, :update, :destroy]

  # GET /fitness_metrics
  # GET /fitness_metrics.json
  def index
    @fitness_metrics = FitnessMetric.all
  end

  # GET /fitness_metrics/1
  # GET /fitness_metrics/1.json
  def show
  end

  # GET /fitness_metrics/new
  def new
    @fitness_metric = FitnessMetric.new
  end

  # GET /fitness_metrics/1/edit
  def edit
  end

  # POST /fitness_metrics
  # POST /fitness_metrics.json
  def create
    @fitness_metric = FitnessMetric.new(fitness_metric_params)

    respond_to do |format|
      if @fitness_metric.save
        format.html { redirect_to @fitness_metric, notice: 'Fitness metric was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fitness_metric }
      else
        format.html { render action: 'new' }
        format.json { render json: @fitness_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitness_metrics/1
  # PATCH/PUT /fitness_metrics/1.json
  def update
    respond_to do |format|
      if @fitness_metric.update(fitness_metric_params)
        format.html { redirect_to @fitness_metric, notice: 'Fitness metric was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fitness_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitness_metrics/1
  # DELETE /fitness_metrics/1.json
  def destroy
    @fitness_metric.destroy
    respond_to do |format|
      format.html { redirect_to fitness_metrics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness_metric
      @fitness_metric = FitnessMetric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitness_metric_params
      params.require(:fitness_metric).permit(:metricsID, :clientID, :exerciseID, :metricsDate, :weight, :Age, :height, :sex, :fatPercent)
    end
end
