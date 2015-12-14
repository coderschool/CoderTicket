class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :venue, index: true, foreign_key: true
      t.string :hero_image_url
      t.text :extended_html_description
      t.references :category, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
