class SelectOptionsController < ApplicationController
  def dealers_by_group
    @dealers = Dealer.where(group: params[:id])
    render json: @dealers
  end
  
end
