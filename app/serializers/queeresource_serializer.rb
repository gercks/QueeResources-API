class QueeresourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :website, :orgtype, :popfocus
  has_one :user
end
