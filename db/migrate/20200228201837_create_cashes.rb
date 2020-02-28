class CreateCashes < ActiveRecord::Migration[5.2]
  def change
    create_table :cashes do |t|
      t.integer :requests
      t.integer :deliveries
      t.decimal :input
      t.decimal :exits
      t.decimal :profit
      t.timestamps
    end
  end
end
