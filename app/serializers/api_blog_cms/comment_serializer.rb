module ApiBlogCms
    class CommentSerializer < ActiveModel::Serializer
       attributes :id, :content, :created_by, :created_at
       
      #  attribute :approved, if: :test_my?
   
      #  def test_my?
      #  true if object.approved == "approved"
      #  end

      def created_by
        object.user.username
      end


    end
  end
  