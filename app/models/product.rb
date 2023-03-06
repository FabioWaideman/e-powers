class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :orders, dependent: :destroy

  include PgSearch::Model
  multisearchable against: %i[title description category]
  pg_search_scope :global_search,
                  against: {
                    title: 'A',
                    description: 'B',
                    category: 'C'
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
