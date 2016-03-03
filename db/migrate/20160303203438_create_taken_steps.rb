class CreateTakenSteps < ActiveRecord::Migration
  def change
    create_table :taken_steps do |t|
      t.integer :count
      t.date :done_on

      t.timestamps null: false
    end
  end
end
