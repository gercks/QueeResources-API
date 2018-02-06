class QueeresourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :website, :orgtype, :popfocus
  has_one :user
  # def editable
  #   scope == object.user
  # end
  #
  # def comments
  #   object.comments.pluck(:id)
  # end
end
