class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.integer :step
      t.text :body
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
