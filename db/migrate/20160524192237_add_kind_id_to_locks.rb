class AddKindIdToLocks < ActiveRecord::Migration
  def change
  	add_column :locks, :kind_id, :integer
  end
end
