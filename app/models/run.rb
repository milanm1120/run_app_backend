class Run < ApplicationRecord
  # validates :distance, numericality: {greater_than: 0}, presence: true
  # validates :time, numericality: {greater_than: 0}, presence: true
  belongs_to :runner
end
