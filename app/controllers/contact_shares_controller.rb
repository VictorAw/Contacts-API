class ContactSharesController < ApplicationController
  def create
    @contact_share = ContactShare.new(contact_shares_param)
    if @contact_share.save
      render json: @contact_share
    else
      render json: @contact_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @contact_share = ContactShare.find(params[:id])
    render json: @contact_share.destroy
  end

  private
  def contact_shares_param
    params.require(:shares).permit(:contact_id, :user_id)
  end
end
