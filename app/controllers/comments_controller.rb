class CommentsController < ApplicationController
  def create

  end

  def destroy

  end

  def index
    commentable = nil
    commentable = User.find(params[:user_id]) unless params[:user_id].nil?
    commentable = Contact.find(params[:contact_id]) unless params[:contact_id].nil?
    commentable = ContactShare.find(params[:shares_id]) unless params[:user_id].nil?

    commentable.comments

    # Alternative is to somehow get the path from the request, extract the
    # first token, turn that token into a Class type, then send #find to get
    # the correct object
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :commentable_id)
end
