module ApiBlogCms
  class BlogSerializer < ActiveModel::Serializer
    attributes :id, :content
  end
end
