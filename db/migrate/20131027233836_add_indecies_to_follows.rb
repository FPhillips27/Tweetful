class AddIndeciesToFollows < ActiveRecord::Migration[4.2]
  def change
    add_index :follows, [:user_id, :following_id]
  end
end
