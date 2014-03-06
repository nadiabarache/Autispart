class CreateEtats < ActiveRecord::Migration
  def change
    create_table :etats do |t|
      t.string :humor
      t.text :event
      t.references :infoperso, index: true

      t.timestamps
    end
  end
end
