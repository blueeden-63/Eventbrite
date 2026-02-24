class AddColumnsToEvents < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :title, :string
    add_column :events, :description, :text
    add_column :events, :start_date, :datetime
    add_column :events, :duration, :integer
    add_column :events, :price, :integer
    add_column :events, :location, :string
    add_column :events, :admin_id, :integer
  end
end
