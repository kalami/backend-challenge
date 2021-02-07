class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.integer :initiator_id
      t.integer :recipient_id

      t.timestamps
    end
    add_index :friendships, :initiator_id
    add_index :friendships, :recipient_id
  end
end
