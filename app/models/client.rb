class Client < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_rich_text :description

  validates :name, presence: true
  validates :person, presence: true
  validates :project, presence: true, uniqueness: true
  validates :industy, presence: true
  validates :service, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :country, presence: true
  validates :address, presence: true
  validates :status, presence: true


  enum status: {
    draft: 0, approved: 1, rejected: 2, pending: 3, completed: 4
  }

  extend FriendlyId
  friendly_id :name, use: :slugged

  scope :approved, -> {
    where(status: :approved)
  }

  scope :pending, -> {
    where(status: :pending)
  }

  scope :completed, -> {
    where(status: :completed)
  }
end
