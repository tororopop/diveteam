class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :content, presence: true

  has_many :goodanswers, dependent: :destroy
  has_many :goodusers, class_name: "User", foreign_key: "user_id", through: :goodanswers

end
