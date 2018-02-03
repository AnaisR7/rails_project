class AddPostsToCommentaires < ActiveRecord::Migration
  def change
    add_reference :commentaires, :post, index: true
  end
end
