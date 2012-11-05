class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :Criterium
      t.references :Candidate
      t.float :value
      t.float :weighted_value

      t.timestamps
    end
    add_index :scores, :Criterium_id
    add_index :scores, :Candidate_id
  end
end
