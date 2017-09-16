require_dependency "api_blog_cms/application_controller"
module ApiBlogCms
  class WelcomeController < ApplicationController
   


    def index
      blog=Blog.all
      render json: blog, each_serializer: BlogSerializer
    end


   
  end
end
