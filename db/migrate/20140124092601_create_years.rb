class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :christian_era
      t.string :name_of_era
      t.integer :year_of_the_era

      t.timestamps
    end
  end
end
