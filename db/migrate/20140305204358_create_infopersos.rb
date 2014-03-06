class CreateInfopersos < ActiveRecord::Migration
  def change
    create_table :infopersos do |t|
      t.string :pseudo
      t.integer :age
      t.string :sexe
      t.string :ville
      t.integer :departement
      t.string :pays

      t.timestamps
    end
  end
end
