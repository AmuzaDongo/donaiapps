class Service < ApplicationRecord
    has_one_attached :icon
    has_one_attached :image
    has_rich_text :description
    validates :title, presence: true
    validates :status, presence: true

    enum status: {
        draft: 0, published: 1, archived: 2
    }

    extend FriendlyId
    friendly_id :title, use: :slugged

    scope :published, -> {
        where(status: :published)
    }

    scope :archived, -> {
        where(status: :archived)
    }
end
