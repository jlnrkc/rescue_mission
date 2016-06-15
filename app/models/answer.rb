class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :title, presence: true
  validates :answer_content, presence: true
end
