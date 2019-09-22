class Topic < ApplicationRecord
  validates_presence_of :title

  # Parent of blog
  has_many :blogs
end
