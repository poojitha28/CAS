class AddUserIdtoWorkExperience < ActiveRecord::Migration
  def change
     add_column :education_details, :user_id, :integer
       add_column :infos, :user_id, :integer
         add_column :work_experiences, :user_id, :integer
  end
end
