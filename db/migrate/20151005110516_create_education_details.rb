class CreateEducationDetails < ActiveRecord::Migration
  def change
    create_table :education_details do |t|
      t.string :programme
      t.string :period
      t.string :university
      t.float :marks
      t.string :class

      t.timestamps null: false
    end
  end
end
