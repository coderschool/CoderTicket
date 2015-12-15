class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.references :event, index: true, foreign_key: true
      t.integer :price
      t.string :name
      t.integer :max_quantity

      t.timestamps null: false
    end
  end
end
