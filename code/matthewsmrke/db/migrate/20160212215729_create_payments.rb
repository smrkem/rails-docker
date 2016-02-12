class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :recipient
      t.date :date
      t.float :amount

      t.timestamps null: false
    end
  end
end
