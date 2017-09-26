class UserSerializer < ActiveModel::Serializer
  # define attributes needed from user model
  attributes :id, :name, :admin
  # link models for data per-user data
  has_many :destinations
  has_many :items
end