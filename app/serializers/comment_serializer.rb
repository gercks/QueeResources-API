class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text
  has_one :user
  has_one :queeresource
  # def editable
  #   scope == object.user
  # end
  #
  # def queeresource
  #   object.queeresource.id
  # end
end
