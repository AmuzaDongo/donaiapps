class Testmonial < ApplicationRecord
    has_one_attached :image
    validates :name, presence: true
    validates :title, presence: true
    validates :company, presence: true
    validates :status, presence: true

    enum status: {
        draft: 0, published: 1, archived: 2
    }

    extend FriendlyId
    friendly_id :name, use: :slugged

    scope :published, -> {
        where(status: :published)
    }

    scope :archived, -> {
        where(status: :archived)
    }
end
