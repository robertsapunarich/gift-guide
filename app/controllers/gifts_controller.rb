class GiftsController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
		@gifts = Gift.where(user_id: current_user.id)
	end

	def show
	end

	def new
		@gift = Gift.new
	end

	def create
		@gift = Gift.new(gift_params)

		if @gift.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def gift_params
		params.require(:gift).permit(:title, :url, :description)
	end

end
