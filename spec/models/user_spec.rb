require 'rails_helper'

describe User, :type => :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).not_to_be_valid
  end
end
