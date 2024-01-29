class Showcase < ApplicationRecord
  has_one_attached :image
    has_rich_text :description
    validates :caption, presence: true
    validates :status, presence: true

    enum status: {
        draft: 0, published: 1, archived: 2
    }

    extend FriendlyId
    friendly_id :caption, use: :slugged

    scope :published, -> {
      where(status: :published)
    }

    scope :archived, -> {
        where(status: :archived)
    }
end
