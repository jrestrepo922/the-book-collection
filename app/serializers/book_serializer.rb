class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :completed, :format, :image, :genre_id
  belongs_to :genre
end
