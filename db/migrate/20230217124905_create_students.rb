class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :rollno
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
