class PlannersController < ApplicationController
  def new
    @planner = Planner.new
  end

  def create
    @planner = Planner.new(planner_params)
    if @planner.save
      session[:planner_id] = @planner.id
      redirect_to "/"
    else
      render :new
    end
  end

  private
    def planner_params
      params.require(:planner).permit(:name, :password, :password_confirmation)
    end
end
