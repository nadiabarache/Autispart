class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :name
      t.string :prenom
      t.string :email, unique: true
      t.string :sexe
      t.integer :age
      t.string :ville
      t.string :departement
      t.string :pays

      t.timestamps
    end
  end
end
