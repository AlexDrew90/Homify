class Listing < ApplicationRecord
  
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :address, :synopsis ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }

  belongs_to :user
  has_many :matches
  validates :price, :bedrooms, :bathrooms, :address, :photos, :property_type, :area_size, :floor, presence: true
end
