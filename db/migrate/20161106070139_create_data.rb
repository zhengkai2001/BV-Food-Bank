class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
