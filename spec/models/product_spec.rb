require 'rails_helper'

describe Product do
	
	before do
		@product = Product.create!(name: "cap")
		@user = User.create!(email: "moritz.daniels@tryggel.com", password: "hallohallo")
		@product.comments.create!(rating: 1, user: @user, body: "Awful cap!")
		@product.comments.create!(rating: 3, user: @user, body: "Good cap!")
		@product.comments.create!(rating: 5, user: @user, body: "Crazy cap!")

	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end
end