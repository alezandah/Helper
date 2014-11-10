class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :occupation

      t.timestamps
    end
  end
end
