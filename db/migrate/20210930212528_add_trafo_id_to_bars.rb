class AddTrafoIdToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :trafo_id, :integer
  end
end
