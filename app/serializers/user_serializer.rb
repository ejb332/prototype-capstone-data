class UserSerializer < ActiveModel::Serializer
  # define attributes needed from user model
  attributes :id, :name, :admin
  # link models for data
  has_many :destinations
  has_many :items
end
