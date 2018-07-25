require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    
    before do
      @user = User.create(email: "carlos@gmail.com", password: "123456789", password_confirmation: "123456789", first_name: "carlos", last_name: "gomez")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

  end

end
