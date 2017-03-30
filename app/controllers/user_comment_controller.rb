class UserCommentController < ApplicationController
  def new
  end

  def create
  	@userComment = UserComment.new
  	@userComment.body = userComment_params[:body]
  	@userComment.save
  end

  def show
  	
  end


private
    def userComment_params
      params.require(:userComment).permit(:body)
    end

end
