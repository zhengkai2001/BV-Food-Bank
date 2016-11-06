class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
