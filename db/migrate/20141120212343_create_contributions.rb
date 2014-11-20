class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :comment
      t.integer :donation_amount
      t.integer :campaign_id

      t.timestamps
    end
  end
end
