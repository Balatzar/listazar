class AddDoneAtToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :done_at, :datetime
  end
end
