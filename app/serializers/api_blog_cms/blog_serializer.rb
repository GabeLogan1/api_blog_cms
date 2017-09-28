module ApiBlogCms
  class BlogSerializer < ActiveModel::Serializer
     attributes :id, :content
     has_many :comments, serializer: CommentSerializer

     def content
       full_sanitizer = Rails::Html::FullSanitizer.new
       full_sanitizer.sanitize(object.content)
     end

     def comments
      object.comments.where(:approved => "approved")
    end

  end
end
