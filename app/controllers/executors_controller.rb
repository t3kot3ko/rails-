class ExecutorsController < ApplicationController
  before_action :set_executor, only: [:show, :update, :destroy]

  # GET /executors
  def index
    @executors = Executor.all

    render json: @executors
  end

  # GET /executors/1
  def show
    render json: @executor
  end

  # POST /executors
  def create
    @executor = Executor.new(executor_params)

    if @executor.save
      render json: @executor, status: :created, location: @executor
    else
      render json: @executor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /executors/1
  def update
    if @executor.update(executor_params)
      render json: @executor
    else
      render json: @executor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /executors/1
  def destroy
    @executor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_executor
      @executor = Executor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def executor_params
      params.require(:executor).permit(:name)
    end
end
