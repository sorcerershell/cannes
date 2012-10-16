class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.references :goals

      t.timestamps
    end
    add_index :candidates, :goals_id
  end
end
