class TestcasesController < ApplicationController
  before_action :set_testcase, only: [:show, :update, :destroy]

  # GET /testcases
  def index
    @testcases = Testcase.all

    render json: @testcases
  end

  # GET /testcases/1
  def show
    render json: @testcase
  end

  # POST /testcases
  def create
    @testcase = Testcase.new(testcase_params)

    if @testcase.save
      render json: @testcase, status: :created, location: @testcase
    else
      render json: @testcase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testcases/1
  def update
    if @testcase.update(testcase_params)
      render json: @testcase
    else
      render json: @testcase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testcases/1
  def destroy
    @testcase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcase
      @testcase = Testcase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testcase_params
      params.require(:testcase).permit(:title, :step, :precondition, :postcondition, :expected_result, :identifier, :description)
    end
end
