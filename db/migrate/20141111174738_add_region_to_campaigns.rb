class AddRegionToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :region, :string
  end
end
