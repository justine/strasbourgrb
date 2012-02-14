class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.string :city
      t.string :zip_code
      t.time :hour_begin
      t.time :hour_end
      t.text :description
      t.date :date_begin
      t.string :link
      t.string :slug

      t.timestamps
    end
    
    add_index :events, :slug, :unique => true
  end
end
