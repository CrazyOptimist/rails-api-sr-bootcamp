class ArticleSerializer
  include JSONAPI::Serializer
  set_type :articles  # because I want to overwrite the default type "article"
  attributes :title, :content, :slug
end
