class Company < ApplicationRecord
  has_many :jobs

  def premium?
    jobs.size > 4
  end
end
