require_dependency "api_blog_cms/application_controller"

module ApiBlogCms
  class WelcomeController < ApplicationController
  


    def index
      blog = CamaleonCms::Post.all
      
      if category = params['category']
        blog = blog.joins(:term_relationships).where("cama_term_relationships.term_taxonomy_id=?",category).references(:term_relationships)
      end

      render json: blog, each_serializer: BlogSerializer, status: 200
    end


    # def get_category_posts
    #   category = params['category']
    #   blog= CamaleonCms::Post.joins(:term_relationships).where("cama_term_relationships.term_taxonomy_id=?",category).references(:term_relationships)
      
       
    #    render json: blog, each_serializer: BlogSerializer
    # end
   
    # def the_post_type
    #   object.post_type
    # end

    # def the_related_posts
    #   ptype = self.the_post_type
    #   ptype.the_posts.joins(:categories).where("#{CamaleonCms::TermRelationship.table_name}" => {term_taxonomy_id: the_categories.pluck(:id)}).distinct
    # end


   
# Client.all :joins => :orders, :conditions => {'orders.created_at' => time_range}
# blog=CamaleonCms::Post.all :joins => :table, :conditions => {'table.term_taxonmy_id' => @category}
# Report.joins(:server).where(:servers => {:company_id => 5})
#blog=CamaleonCms::Post.joins (CamaleonCms::TermRelationship).where('cama_term_relationships.term_taxonomy_id = "6"')


  end
end
