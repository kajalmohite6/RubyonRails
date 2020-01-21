class AddgendertoStudents < ActiveRecord::Migration
  def change
    add_column :students, :gender, :string, null: false, default: "Female", after: :email
  end
end
