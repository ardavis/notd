class TagSerializer < ActiveModel::Serializer
  attributes :label, :value

  def label
    object.name
  end

  def value
    object.name
  end
end
