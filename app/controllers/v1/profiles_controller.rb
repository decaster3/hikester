module V1
  class ProfilesController < ApplicationController

  		def edit  		
  			@profile = Profile.find(params[:id])
  			@profile.first_name = params[:first_name];
  			@profile.last_name = params[:last_name];
  			@profile.email = params[:email];
  			@profile.facebook = params[:facebook];
  			@profile.gender = params[:gender];
  			@profile.date_of_birth = params[:date_of_birth];
  			@profile.telegram = params[:telegram];
  			@profile.whatsapp = params[:whatsapp];
  			@profile.address = params[:address];
  			@profile.save
  			render json: @profile
  		end

  		def show 
  			@profile = Profile.find_by_user_id(params[:user_id])
  			render json: @profile
  		end

  end
end
