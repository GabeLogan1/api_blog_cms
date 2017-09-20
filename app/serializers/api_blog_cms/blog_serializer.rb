module ApiBlogCms
  class BlogSerializer < ActiveModel::Serializer
    attributes :id, :content

    def content
      full_sanitizer = Rails::Html::FullSanitizer.new
      full_sanitizer.sanitize(object.content)
    end
  end
end
