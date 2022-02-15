class AddGensIdToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :gen_id, :integer
  end
end
