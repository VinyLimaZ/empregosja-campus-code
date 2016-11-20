class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category

  validates :title, :location, :description, :category, :company, presence: true

  def expired?
    self.created_at < (Time.now - 90.days)
  end

  def promoted?
    self.created_at > (Time.now - 4.days)
  end

end
