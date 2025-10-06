class AuthenticatedController < ApplicationController
  before_action :authenticate_shop!

  attr_reader :current_shop

  def authenticate_shop!
    if params[:api_token].blank?
      render json: { error: "API token is required" }, status: :unauthorized
    else
      @current_shop = Shop.find_by(api_token: params[:api_token])
      if @current_shop.blank?
        render json: { error: "Invalid API token" }, status: :unauthorized
      end
    end
  end
end
