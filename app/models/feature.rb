class Feature < ApplicationRecord
  belongs_to :service
  has_rich_text :description
  validates :name, presence: true
end
