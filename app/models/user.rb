class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  has_many :sent_transactions, class_name: "Transaction", foreign_key: "sender_id"
  has_many :received_transactions, class_name: "Transaction", foreign_key: "recipient_id"

  enum currency: [:USD, :EUR, :GDP] # Default currency USD at 0

  scope :all_except, ->(user) { where.not(id: user) }

  def balance_from_currency(currency)
  	case currency
  	when 'USD'
  		usd_balance
  	when 'EUR'
  		eur_balance
  	when 'GDP'
  		gdp_balance
  	end
  end

  def add_balance(currency, value)
  	case currency
  	when 'USD'
  		value = usd_balance + value
  		self.update_attribute(:usd_balance, value)
  	when 'EUR'
  		value = eur_balance + value
  		self.update_attribute(:eur_balance, value)
  	when 'GDP'
  		value = gdp_balance + value
  		self.update_attribute(:gdp_balance, value)
  	end
  end

  def subtract_balance(currency, value)
  	case currency
  	when 'USD'
  		value = usd_balance - value
  		self.update_attribute(:usd_balance, value)
  	when 'EUR'
  		value = eur_balance - value
  		self.update_attribute(:eur_balance, value)
  	when 'GDP'
  		value = gdp_balance - value
  		self.update_attribute(:gdp_balance, value)
  	end
  end

end
