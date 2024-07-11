class HomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(:created_at).limit(12)
  end
end
