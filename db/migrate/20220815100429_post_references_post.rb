class PostReferencesPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :posts
  end
end
