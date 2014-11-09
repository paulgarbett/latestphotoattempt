class Comment
	include Mongoid::Document

	field :author, type: String
	field :comment, type: String

	embedded_in :post
end