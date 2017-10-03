module ApiBlogCms
  class BlogSerializer < ActiveModel::Serializer
     attributes  :title, :content, :created_at, :author
     has_many :comments, serializer: CommentSerializer
    # attribute :published , if: :condition

     def content
       full_sanitizer = Rails::Html::FullSanitizer.new
       full_sanitizer.sanitize(object.content)
     end

     def comments
      object.comments.where(:approved => "approved")
    end

    def author
        object.owner.username
    end
  

  end
end
