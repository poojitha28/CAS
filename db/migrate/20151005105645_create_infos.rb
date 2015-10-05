class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :fname
      t.string :lname
      t.string :designation
      t.string :dept
      t.string :post_held
      t.string :ein
      t.date :date_of_app
      t.date :dob
      t.text :address
      t.string :contact_no

      t.timestamps null: false
    end
  end
end
