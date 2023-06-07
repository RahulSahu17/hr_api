class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :roll
      t.string :number
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
