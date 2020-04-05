class OthersController < ApplicationController

    # def new
    #     @society = Society.new
    #     @user = User.new
    # end

    # def index
    #     @societies = Society.all
    #     @users = User.all
    # end

    # def show
    #     @society = Society.find(params[:id])
    #     @user = User.find(params[:id])
    # end

    # def edit
    #     @society = Society.find(params[:id])
    #     @user = User.find(params[:id])
    # end

    # def link
    # end
    def all
        @societies = Society.all
    end

    private

    def user_params
      params.require(:society).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end

