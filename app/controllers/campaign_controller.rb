class CampaignController < ApplicationController

  def index
  @campaigns = Campaign.all
  end

  def show
    @campaign= Campaign.find(params[:id])
  end

  def new
  @campaign = Campaign.new
  end


  def campaigns_params
    params.require(:post).permit(:title, :story, :target_amount, :amount_raised, :timeline)
  end

  def create
    @campaign = Campaign.new(campaigns_params)

    if @campaign.save
      redirect_to campaign_path(@campaign), :notice => "Your account was created!"
    else
      render "new"
    end
  end

  def edit
    @campaign= Campaign.find(params[:id])
  end

  def update
    @campaign= Campaign.find(params[:id])

    if @campaign.update_attributes(campaigns_params)
      redirect_to campaign_path, :notice => "Your campaign has been created!"
    else
      render "edit"
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    redirect_to campaign_index_path, :notice => "Your campaign was deleted"
  end

end
