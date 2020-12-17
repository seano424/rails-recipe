class CreateDashes < ActiveRecord::Migration[6.0]
  def change
    create_table :dashes do |t|
      t.text :description
      t.references :ingredient, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
