class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :test_id, null: false, foreign_key: { to_table: :tests }

      t.timestamps
    end
  end
end
