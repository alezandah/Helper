class CreateFunders < ActiveRecord::Migration
  def change
    create_table :funders do |t|
      t.string :name
      t.string :email
      t.integer :contribution

      t.timestamps
    end
  end
end
