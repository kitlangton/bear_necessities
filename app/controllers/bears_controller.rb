class BearsController < ApplicationController
  before_action :set_bear, only: [:edit, :show, :update, :destroy]

  def index
    @bears = Bear.all
  end

  def new
    @bear = Bear.new
  end

  def edit
  end

  def show
  end

  def create
    @bear = Bear.new(bear_params)
    if @bear.save
      redirect_to @bear, notice: "#{@bear.name} was successfully created!"
    else
      render :new, alert: "Bear creation has failed!"
    end
  end

  def update
    if @bear.update(bear_params)
      redirect_to @bear, notice: "#{@bear.name} was successfully updated!"
    else
      render :edit, alert: "Bear update has failed!"
    end
  end

  def destroy
    if @bear.destroy
      redirect_to bears_path, notice: "#{@bear.name} was successfully killed!"
    else
      redirect_to :back, alert: "Bear has resisted destruction!"
    end
  end

  private

  def set_bear
    @bear = Bear.find(params[:id])
  end

  def bear_params
    params.require(:bear).permit(:name, :description)
  end
end
