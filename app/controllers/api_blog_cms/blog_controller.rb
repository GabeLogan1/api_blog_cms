require_dependency "api_blog_cms/application_controller"

module ApiBlogCms
  class BlogController < ApplicationController
    def index
      blog = CamaleonCms::Post.joins(:term_relationships)
    
      if category = params['category']
        blog = blog.joins(:term_relationships).where("cama_term_relationships.term_taxonomy_id=?",category).references(:term_relationships)
      end

      render json: blog, each_serializer: BlogSerializer, status: 200
    end
    
  
  def show

    blog=CamaleonCms::Post.find(params[:id])
       
    render json: blog, serializer: BlogSerializer, status: 200
     end
  
  end


end

