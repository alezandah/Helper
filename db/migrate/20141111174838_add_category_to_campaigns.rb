class AddCategoryToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :category, :string
  end
end
