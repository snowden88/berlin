require 'rails_helper'

describe Product do

  before do
    @product = Product.create!(name: "race bike")
    @user = User.create!(email: "email@email.com", password: "12345678")
    @product.comments.create!(rating: 1, user: @user, body: "terrible bike.")
    @product.comments.create!(rating: 3, user: @user, body: "average bike.")
    @product.comments.create!(rating: 5, user: @user, body: "best bike of all.")
  end

  it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3.0
  end

  it "validates the product" do
		expect(Product.new(description: "nice bike")).not_to be_valid
	end

end
