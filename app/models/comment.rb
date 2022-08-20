class Comment < ApplicationRecord
  belongs_to :post, touch: true
  broadcasts_to :post

  after_create :update_stats
  after_destroy :update_stats

  def update_stats 
      broadcast_update_to "stats", target: "comments_count", partial: "comments/stats", locals: { comments: Comment.all }
  end
end
