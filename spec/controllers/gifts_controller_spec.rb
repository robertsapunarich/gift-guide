require 'rails_helper'

RSpec.describe GiftsController, type: :controller do
	describe "gifts#create" do
		it "creates a gift in the database when a user is signed in" do
			u = FactoryGirl.create(:user)
			sign_in u

			post :create, gift: {
				title: "a gift",
				url: "example.com",
				description: "I would like this gift"
			}

			expect(response).to redirect_to root_path

			gift = Gift.last
			expect(gift.title).to eq("a gift")
			expect(gift.user).to eq(u)
		end
	end
end