class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :friends_count

      t.timestamps
    end
    add_index :members, :name
  end
end
