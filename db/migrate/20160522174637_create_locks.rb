class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.string :website
      t.string :username
      t.string :password
      t.string :additional_info
      t.string :email_linked_with_this_account

      t.timestamps null: false
    end
  end
end
