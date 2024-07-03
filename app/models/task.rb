class Task < ApplicationRecord
  validates :title, presence: true
  
  scope :completed, -> {
    where(:completed => true)
  }
  scope :todo, -> {
    where(:completed => false)
  }
end
