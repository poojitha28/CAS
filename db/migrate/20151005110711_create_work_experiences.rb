class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :Institute
      t.string :Designation
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
