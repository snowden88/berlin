require 'rails_helper'

describe UsersController, :type => :controller do

 before do
   #@user = User.create!(first_name: "Dave", last_name: "Davidson", email: "dave@dave.com", password: "davespw8")
   #@user2 = User.create!(first_name: "Andy", last_name: "Anderman", email: "andy@andy.com", password: "andyspw8")
   @user = FactoryGirl.create(:user)
   @user2 = FactoryGirl.create(:user2)
 end

 describe "GET #show" do
   context "User is logged in" do
     before do
       sign_in @user
     end


     it "loads the correct user details" do
       get :show, id: @user.id
       expect(response.status).to eq 200
       expect(assigns(:user)).to eq @user
      end

     it "doesn't load the second user" do
          get :show, id: @user2.id
          expect(response.status).to eq 302
          expect(response).to redirect_to(root_path)
     end
   end

   context "No user is logged in" do
     it "redirects to login" do
          get :show, id: @user.id
          expect(response).to redirect_to(root_path)
     end
   end
 end
end
