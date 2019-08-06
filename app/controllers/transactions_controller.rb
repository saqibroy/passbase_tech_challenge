class TransactionsController < ApplicationController
	before_action :authenticate_user!
	include TransactionsHelper

	def index
	end

	def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.sender_id = current_user.id
    if @transaction.currency != @transaction.target_currency
    	@transaction.converted_value = covert_money(@transaction.currency, @transaction.target_currency, @transaction.value)
    end
    


    respond_to do |format|
      if @transaction.save
      	TransactionsJob.perform_later(@transaction)
        format.html { redirect_to root_path, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def transaction_params
      params.require(:transaction).permit(:recipient_id, :currency, :target_currency, :value)
    end
end
