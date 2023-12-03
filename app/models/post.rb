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

  def formatted_created_at
    created_at.strftime('%d-%m-%Y %H:%M:%S')
  end
end