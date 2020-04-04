class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        case resource
        when User
            mypage_usermypage_path
        when Society
            mypage_societymypage_path
        end
    end

    def after_sign_out_path_for(resource)
        others_toppage_path
    end

    protected
    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # アカウント編集の時にnameとprofileのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
    end

    

 　　 protected

 　　def configure_permitted_parameters(resource)
        case resource
        when User
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :instrument, :years, :have, :region, :other])
        when Society
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :wants, :activity, :have, :region, :other])
        else
            super
        end
  　end
end

