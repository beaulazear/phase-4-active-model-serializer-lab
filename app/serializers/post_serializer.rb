class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags

  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags
end
