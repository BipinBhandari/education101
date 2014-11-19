class SurveysController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:update]
  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all

    render json: @surveys, status: :ok
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    @survey = Survey.find(params[:id])

    render json: @survey, status: :ok
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      render json: @survey, status: :created, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    @survey = Survey.find(params[:id])

    if @survey.update(survey_params)
      head :no_content
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    head :no_content
  end

  private
    
    def survey_params
      params.require(:survey).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11)
    end
end
