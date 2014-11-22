class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show, :edit, :update, :destroy]

  def index
    @contributions = Contribution.all

  end

  def show
    @contribution= Contribution.find(params[:id])
  end

  def new
    @contribution = Contribution.new

  end

  def edit
    @contribution= Contribution.find(params[:id])
  end

  def contribution_params
    params.require(:contribution).permit(:first_name, :last_name, :email, :comment, :donation_amount, :campaign_id)
  end

  def create
    @contribution = Contribution.new(contribution_params)

    if @contribution.save
      redirect_to contributions_path(@contribution), :notice => "Your contribution has been created!"
    else
      render "new"
    end
  end

  def update
    @contribution= Contribution.find(params[:id])

    if @contribution.update_attributes(contribution_params)
      redirect_to contribution_path, :notice => "Your campaign has been updated!"
    else
      render "edit"
    end

  end

  def destroy
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to contributions_path, :notice => "Your contribution has been deleted"
  end

  private
  def set_contribution
    @contribution = Contribution.find(params[:id])
  end

end

