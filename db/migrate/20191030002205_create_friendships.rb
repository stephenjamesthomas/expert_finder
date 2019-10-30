class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :friend, index: true, foreign_key: { to_table: :experts }
      t.references :expert, index: true, foreign_key: { to_table: :experts }

      t.timestamps
    end
  end
end
