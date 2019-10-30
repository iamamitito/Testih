class Centre < ApplicationRecord
    validates :name, presence: true
    geocoded_by :address
    after_validation :geocode
end
