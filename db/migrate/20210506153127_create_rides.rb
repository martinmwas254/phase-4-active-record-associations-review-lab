class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|

      t.references :taxi, null: false, foreign_key: true
      t.references :passenger, null: false, foreign_key: true
      t.timestamps
    end
  end
end
