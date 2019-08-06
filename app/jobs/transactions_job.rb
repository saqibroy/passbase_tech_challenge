class TransactionsJob < ApplicationJob
  queue_as :default

  def perform(transaction)
    if (transaction.sender.balance_from_currency(transaction.currency) >= transaction.value)
    	# TODO Reduce the total balance of sender for specific currency
    	# TODO Add the converted value to balance of recipient specific currency
    	transaction.sender.subtract_balance(transaction.currency, transaction.value)
    	if transaction.converted_value.nil?
    		transaction.recipient.add_balance(transaction.target_currency, transaction.value)
    		else
    		transaction.recipient.add_balance(transaction.target_currency, transaction.converted_value)
    	end
    	transaction.update!(status: true)
    else
    	# Unable to send, Low Balance
    	transaction.update!(status: false)
    end
  end
end