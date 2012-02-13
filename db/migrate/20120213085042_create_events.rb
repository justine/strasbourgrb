class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.time :hour_begin
      t.time :hour_end
      t.text :description
      t.date :date_begin
      t.string :link

      t.timestamps
    end
  end
end
