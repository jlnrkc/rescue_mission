class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.string :answer_content, null: false
      t.integer :question_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :answers, :question_id
    add_index :answers, :user_id
  end
end
