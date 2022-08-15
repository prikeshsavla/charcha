class Post < ApplicationRecord
    validates_presence_of :content
    validates :content, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
    has_many :replies, class_name: "Post",
                          foreign_key: "posts_id"
    belongs_to :parent, class_name: "Post", foreign_key: "posts_id", optional: true
end
