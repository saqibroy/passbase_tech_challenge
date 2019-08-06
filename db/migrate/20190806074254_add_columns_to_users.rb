class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :eur_balance, :decimal, default: 0, precision: 8, scale: 2
    add_column :users, :usd_balance, :decimal, default: 1000, precision: 8, scale: 2
    add_column :users, :gdp_balance, :decimal, default: 0, precision: 8, scale: 2
  end
end
