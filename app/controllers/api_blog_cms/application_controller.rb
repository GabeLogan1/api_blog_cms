module ApiBlogCms
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate

    protected
    def authenticate
      authenticate_or_request_with_http_basic do|email, password|
      @user = CamaleonCms::User.by_email(email).first
      @user && @user.authenticate(password)
      end
    end


    end
end
