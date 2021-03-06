class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :context, :content, :user_id

  belongs_to :user
  belongs_to :commentable, :polymorphic => true
end
