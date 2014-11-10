class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :amount
      t.date :date
      t.string :comment

      t.timestamps
    end
  end
end
