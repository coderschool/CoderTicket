class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :full_address
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
