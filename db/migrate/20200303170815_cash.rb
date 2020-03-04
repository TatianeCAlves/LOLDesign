class Cash < ActiveRecord::Migration[5.2]
  def change
    create_table :cashes do |t|
          
      t.integer :input
      t.integer :deliveries
      t.float   :requests
      t.float   :exits
      t.float   :profit

      t.timestamps
    end
  end
end
