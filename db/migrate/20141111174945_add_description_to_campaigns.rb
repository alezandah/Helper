class AddDescriptionToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :Description, :string
  end
end
