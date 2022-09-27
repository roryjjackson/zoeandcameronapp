class CreateRsvps < ActiveRecord::Migration[7.0]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :song
      t.boolean :attendance
      t.string :diet

      t.timestamps
    end
  end
end
