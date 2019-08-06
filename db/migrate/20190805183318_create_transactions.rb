class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :currency
      t.decimal :value
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
