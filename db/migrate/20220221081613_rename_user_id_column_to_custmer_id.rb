class RenameUserIdColumnToCustmerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :user_id, :custmer_id
  end
end
