class AddColumnToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :sold, :boolean, default: false
  end
end
