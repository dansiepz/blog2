class Post < ActiveRecord::Base
  belongs_to :user
  default_scope order: 'posts.created_at DESC'

  def self.active
  	self.where("active = ?", true)
  end
end
