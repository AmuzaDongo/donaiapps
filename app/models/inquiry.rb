class Inquiry < ApplicationRecord
  belongs_to :service

  enum status: {
    submited: 0, repplied: 1, rejected: 2, pending: 3, completed: 4
  }

  extend FriendlyId
    friendly_id :company_name, use: :slugged
end
