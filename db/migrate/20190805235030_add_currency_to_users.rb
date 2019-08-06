class AddCurrencyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :currency, :integer, default: 0
  end
end
