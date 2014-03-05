class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :email ,unique: true

      t.timestamps
    end
  end
end
