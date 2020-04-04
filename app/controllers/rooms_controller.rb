class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id]) #ルーム情報の取得
    @message = Message.new #新規メッセージ投稿
    @messages = @room.messages #このルームのメッセージを全て取得
    if user_signed_in?
      if @room.user.id == current_user.id
        @society = @room.society
      else
        redirect_to "/"
      end
    elsif society_signed_in?
      if @room.society.id == current_society.id
        @user = @room.user
      else
        redirect_to "/"
      end
    
    else
      redirect_to "/"
    end
  end

  def create
    if user_signed_in?
      #userがログインしてたらuser_idを, shopがログインしてたらshop_idを@roomにいれる
      @entry = Entry.new(room_society_params)
      @entry.user_id = current_user.id
      @entry.society = false
    elsif society_signed_in?
      @entry = Entry.new
      @entry.user_id = current_society.id
      @entry.society = true
    else
      redirect_to "/"
    end
    
    if @room.save
      redirect_to :action => "show", :id => @room.id
    else
      redirect_to "/"
    end
  end
  
  private
  def room_society_params
    params.require(:room).permit(:society_id)
  end
  
  # def room_user_params
  #   params.require(:room).permit(:user_id)
  # end

end
