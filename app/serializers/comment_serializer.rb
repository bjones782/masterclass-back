class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :student_id
end
