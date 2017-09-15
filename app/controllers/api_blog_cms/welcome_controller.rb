require_dependency "api_blog_cms/application_controller"
module ApiBlogCms
  class WelcomeController < ApplicationController
    before_action :authenticate


    def index
      
      blog=Blog.all
      render json: blog, each_serializer: BlogSerializer
    end


    protected
        def authenticate
  
          authenticate_or_request_with_http_basic do|email, password|
          @user = CamaleonCms::User.by_email(email).first
          @check = @user && @user.authenticate(password)
          end
        end
  end
end
