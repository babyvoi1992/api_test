class Api::V1::TestController < ApplicationController
  before_action :authenticate_api_v1_user!

  def index
    render json: {
      data: {
        message: "Welcome #{current_api_v1_user.name}",
        user: current_api_v1_user
      }
    }, status: 200
  end
end
