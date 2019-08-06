class AddColumnsToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :converted_value, :decimal
    add_column :transactions, :target_currency, :string
    add_column :transactions, :status, :boolean, default: nil
  end
end
