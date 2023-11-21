class Post < ApplicationRecord
  validates :title, :body, :grade, presence: true

  belongs_to :user
  has_many :comments

  before_create :set_grade
  def set_grade
    unless self.grade
      self.grade = 0
    end
  end
end