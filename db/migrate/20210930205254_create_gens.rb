class CreateGens < ActiveRecord::Migration[6.1]
  def change
    create_table :gens do |t|
      t.string :name
      t.decimal :PF
      t.decimal :SN
      t.decimal :UN
      t.decimal :If0
      t.decimal :Uf0
      t.decimal :Ifn
      t.decimal :Ufn
      t.decimal :Xd
      t.decimal :Xq
      t.decimal :ra
      t.decimal :Pferro
      t.decimal :Pmec
      t.decimal :Psup
      t.decimal :Pven
      t.decimal :k_exm
      t.decimal :k_prl

      t.timestamps
    end
  end
end
