class AddParentIdToCriterium < ActiveRecord::Migration
  def change
    add_column :criteria, :parent_id, :integer
  end
end
