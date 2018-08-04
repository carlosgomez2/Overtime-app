module Admin
  class UsersController < Admin::ApplicationController
    def update
      params[:user].delete(:password) if params[:user][:password].blank?
      super
    end
  end
end
