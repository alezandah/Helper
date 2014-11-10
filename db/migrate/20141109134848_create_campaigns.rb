class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :story
      t.integer :target_amount
      t.integer :amount_raised
      t.date :timeline

      t.timestamps
    end
  end
end
