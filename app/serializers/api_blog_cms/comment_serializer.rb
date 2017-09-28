module ApiBlogCms
    class CommentSerializer < ActiveModel::Serializer
       attributes :id, :content
       
      #  attribute :approved, if: :test_my?
   
      #  def test_my?
      #  true if object.approved == "approved"
      #  end


    end
  end
  