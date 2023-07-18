class Operation < ApplicationRecord
  belongs_to :category
  validates :amount, :odate, :description, presence: true
  validates :amount, numericality: { greater_than: 0.0 }
  paginates_per 10
end
