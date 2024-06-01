class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.boolean :correct, null: false, default: false
      t.references :question_id, null: false, foreign_key: { to_table: :questions }

      t.timestamps
    end
  end
end
