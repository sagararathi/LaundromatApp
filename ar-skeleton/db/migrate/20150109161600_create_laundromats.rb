class CreateLaundromats < ActiveRecord::Migration
  def change
    create_table :laundromats do |t|
      t.string  :entity_name
      t.integer :address_id

      t.timestamps
    end
  end
end

