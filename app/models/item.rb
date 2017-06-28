class Item < ApplicationRecord

	validates :number, numericality: { greater_than: 0, allow_nil: true }
	validates :name, :desc, presence: true
end
