module Admin
  class AdminUsersController < Admin::ApplicationController
    def update
      params[:admin].delete(:password) if params[:admin][:password].blank?
      super
    end
  end
end
