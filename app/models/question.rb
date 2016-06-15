class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user

  validates :title, presence: true
  validates :question_content, presence: true

  accepts_nested_attributes_for :user
end
