class StudentSerializer < ActiveModel::Serializer
    attributes :id, :name, :user_id, :almost, :notyet, :mastered
  end