class CreateTurbs < ActiveRecord::Migration[6.1]
  def change
    create_table :turbs do |t|
      t.string :name
      t.decimal :Pmin

      t.timestamps
    end
  end
end
