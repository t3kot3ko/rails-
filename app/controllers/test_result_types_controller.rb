class TestResultTypesController < ApplicationController
  before_action :set_test_result_type, only: [:show, :update, :destroy]

  # GET /test_result_types
  def index
    @test_result_types = TestResultType.all

    render json: @test_result_types
  end

  # GET /test_result_types/1
  def show
    render json: @test_result_type
  end

  # POST /test_result_types
  def create
    @test_result_type = TestResultType.new(test_result_type_params)

    if @test_result_type.save
      render json: @test_result_type, status: :created, location: @test_result_type
    else
      render json: @test_result_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_result_types/1
  def update
    if @test_result_type.update(test_result_type_params)
      render json: @test_result_type
    else
      render json: @test_result_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_result_types/1
  def destroy
    @test_result_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_result_type
      @test_result_type = TestResultType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_result_type_params
      params.require(:test_result_type).permit(:title, :color, :identifier)
    end
end
