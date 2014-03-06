class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :age_diagnostic
      t.string :pays_diagnostic
      t.string :autism_type
      t.string :trouble_psycho
      t.string :other_trouble
      t.references :infoperso, index: true

      t.timestamps
    end
  end
end
