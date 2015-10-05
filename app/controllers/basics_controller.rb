class BasicsController < ApplicationController
    def info
     @info = Info.new
    end
    def info_create
        @info = Info.create(info_params)
          @info.user_id = current_user.id
        @info.save
        redirect_to authenticated_root_path
   end
    def home
    
    end
    def education_new
        @education = EducationDetail.new
    end
    def education_create
        @education = EducationDetail.create(education_params)
          @education.user_id = current_user.id
        @education.save
        redirect_to authenticated_root_path
   end
    def work_new
        @work = WorkExperience.new
    end
    def work_create
         more = params[:work_experience]
         end_date = more[:to_date]
        start_date = more[:from_date]
        more[:to_date] = end_date.to_date
        more[:from_date] = start_date.to_date
        @work = WorkExperience.create(work_params)
          @work.user_id = current_user.id
        @work.save
        redirect_to authenticated_root_path
   end
    def info_params
    params.require(:info).permit(:fname, :lname, :designation, :dept, :post_held, :ein, :date_of_app, :dob, :address, :contact_no)
  end
    def education_params
    params.require(:education_detail).permit(:programme, :period, :university, :marks, :class_obtained)
  end
    def work_params
    params.require(:work_experience).permit(:Institute, :Designation, :to_date, :from_date)
  end
end