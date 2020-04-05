class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        case resource
        when User
            mypage_usermypage_path(current_user.id)
        when Society
            mypage_societymypage_path(current_society.id)
        end
    end
  
    def after_sign_out_path_for(resource)
        others_toppage_path
    end 
  
end



