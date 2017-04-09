module V1
  class MainController < ApplicationController
  

  	def index
  		@data = User.find(1)
  		render json: @data
  	end

  end
end