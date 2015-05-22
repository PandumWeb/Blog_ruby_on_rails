class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :user
	validates :title, presence: true, length:{minimum:5}
	validates :body, presence: true
	belongs_to	:category, dependent: :destroy
	has_many	:tags
end
