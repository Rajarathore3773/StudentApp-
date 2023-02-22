class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
     t.string :maths
     t.string :english
     t.string :physics
     t.string :chemistry
     t.string :hindi




      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
