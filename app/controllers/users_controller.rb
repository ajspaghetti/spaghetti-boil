class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
  
    def index
      users = User.all
      render json: { users: users }, status: :ok
    end
  
    def show
      user_show = User.find(params[:id])
      render json: { user: user_show }, status: :ok, serializer: UserSerializer
    end
  
    def create
      user_create = User.create!(user_params)
      render json: { user: user_create }, status: :created
    end
  
    def update
      user_update = User.find(params[:id]).update!(user_params)
      render json: { user: user_update }, status: :accepted
    end
  
    def destroy
      user = User.find(params[:id])
      user.destroy!
      head :no_content
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username)
    end
  
    def not_found
      render json: { error: "User does not exist." }, status: :not_found
    end

    def set_cache_headers
        response.headers['Cache-Control'] = 'no-cache, no-store'
        response.headers['Pragma'] = 'no-cache'
        response.headers['Expires'] = '0'
    end
end
  