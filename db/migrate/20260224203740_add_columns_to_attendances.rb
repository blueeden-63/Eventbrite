class AddColumnsToAttendances < ActiveRecord::Migration[8.1]
  def change
    add_column :attendances, :user_id, :integer
    add_column :attendances, :event_id, :integer
    add_column :attendances, :stripe_customer_id, :string
  end
end
