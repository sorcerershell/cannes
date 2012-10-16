class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :name
      t.float :weight
      t.references :goals

      t.timestamps
    end
    add_index :criteria, :goals_id
  end
end
