class CreateTrafos < ActiveRecord::Migration[6.1]
  def change
    create_table :trafos do |t|
      t.string :name
      t.decimal :Sn
      t.decimal :U1N
      t.decimal :U2N
      t.decimal :rT
      t.decimal :ZT
      t.decimal :Pferro
      t.decimal :Pcu

      t.timestamps
    end
  end
end
