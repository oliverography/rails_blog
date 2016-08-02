require 'rails_helper'

RSpec.describe User, :type => :model do

  # let(:valid_attributes) do
  #   {
  #     name: "Oliver",
  #     email: "oliver@nycda.com",
  #     password: "password"
  #   }
  # end

  # let(:user) { User.new(valid_attributes) }

  let(:user) { create(:user) }

  it "should be invalid when name is nil" do
    user.name = nil

    expect(user).to be_invalid
  end

  it "should be invalid when email is nil" do
    user.email = nil

    expect(user).to be_invalid
  end

  it "should be invalid when password is nil" do
    user.password = nil

    expect(user).to be_invalid
  end

end