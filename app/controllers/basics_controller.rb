class BasicsController < ApplicationController
    def info
     
    end
    def home
    
    end
    def education_new
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
    def work_params
    params.require(:work_experience).permit(:Institute, :Designation, :to_date, :from_date)
  end
end