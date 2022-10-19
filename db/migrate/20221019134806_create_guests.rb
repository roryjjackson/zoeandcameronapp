class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :password_digest

      t.timestamps
    end
  end
end
