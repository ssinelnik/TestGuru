class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.references :test_id, null: false, foreign_key: { to_table: :tests }

      t.timestamps
    end
  end
end
