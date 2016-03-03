class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :number
      t.date :weigh_date_on

      t.timestamps null: false
    end
  end
end
