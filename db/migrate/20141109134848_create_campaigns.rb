class CreateCampaigns < ActiveRecord::Migration

  def up
    create_table :campaigns do |t|
      t.string :title
      t.integer :target_amount
      t.timestamps
    end
  end

  def down
    drop_table :campaigns
  end
end
