class Episode < ApplicationRecord
  belongs_to :service

  validates :title, presence: true
  validates :youtube_id, presence: true
  validates :status, presence: true

  enum status: {
    draft: 0, published: 1, archived: 2
  }

  scope :published, -> {
    where(status: :published)
  }
end
