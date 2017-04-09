module V1
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!

    
    def create
      @user = User.find_for_database_authentication(email: params[:username])
      return invalid_login_attempt unless @user

      if @user.valid_password?(params[:password])
        sign_in :user, @user
        render json: @user, serializer: SessionSerializer, root: nil
      else
        invalid_login_attempt
      end
    end


    def new

      @user = User.new(email: params[:email], username: params[:username], password: params[:password],  password_confirmation: params[:password]);
      @user.save
      @profile = Profile.new(email: params[:email], user_id: User.find_by_email(params[:email]).id);
      @profile.save
      render json: @user 

    end

    private

    def invalid_login_attempt
      warden.custom_failure!
      render json: {error: t('sessions_controller.invalid_login_attempt')}, status: :unprocessable_entity
    end

  end
end