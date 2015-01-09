class CreateLicenseNumbers < ActiveRecord::Migration
  def change
    create_table :license_numbers do |t|
      t.integer :license_number
      t.integer :laundromat_id

      t.timestamps
    end
  end
end
