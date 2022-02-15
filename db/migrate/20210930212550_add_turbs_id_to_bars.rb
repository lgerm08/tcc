class AddTurbsIdToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :turb_id, :integer
  end
end
