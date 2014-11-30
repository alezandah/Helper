class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
    @comment= Comment.find(params[:id])
    end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @comment = @campaign.comments.build
  end
  def edit
    @comment= Comment.find(params[:id])
  end

    def comment_params
      params.require(:comment).permit(:name, :text, :campaign_id)
    end

  def create
    @comment = Comment.new(comment_params)
    @comment.campaign_id=params[:campaign_id]

    if @comment.save
      redirect_to campaign_path(params[:campaign_id]), :notice => "Your contribution has been created!"
    else
      render "new"
    end
  end

  def update
    @comment= Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      redirect_to campaign_path(params[:campaign_id]), :notice => "Your comment has been updated!"
    else
      render "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path, :notice => "Your comment has been deleted"
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end
end
