class Post
  include Mongoid::Document
  field :title, type: String
  field :camera, type: String
  field :desc, type: String

  embeds_many :comments
end
