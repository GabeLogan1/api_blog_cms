require_dependency "api_blog_cms/application_controller"

module ApiBlogCms
  class CategoryController < ApplicationController
    def index
      categories=CamaleonCms::Category.no_empty

      render json: categories, each_serializer: CategorySerializer, status: 200
    end
  end
end
