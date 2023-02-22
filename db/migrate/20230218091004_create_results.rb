class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :maths
      t.integer :english
      t.integer :physics
      t.integer :chemistry
      t.integer :hindi
      
    


      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
