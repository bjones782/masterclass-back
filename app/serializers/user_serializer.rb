class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :img_url, :school
end
