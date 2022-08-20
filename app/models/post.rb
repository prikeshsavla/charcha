class Post < ApplicationRecord
    validates_presence_of :title
    has_rich_text :content
    has_many :comments, dependent: :destroy
    after_touch { broadcast_update }
    after_create :update_stats
    after_destroy :update_stats

    def update_stats 
        broadcast_update_to "stats", target: "posts_count", partial: "posts/stats", locals: { posts: Post.all }
    end
end