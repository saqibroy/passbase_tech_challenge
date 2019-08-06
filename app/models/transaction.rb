class Transaction < ApplicationRecord

	belongs_to :sender, class_name: "User", foreign_key: "sender_id"
	belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"

	validates :value, presence: true, numericality: { greater_than: 0, less_than: 10000 }

	enum currency: [:USD, :EUR, :GDP] # Default currency USD at 0





end
