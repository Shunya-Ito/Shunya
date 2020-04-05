class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id]) #ルーム情報の取得
    @message = Message.new #新規メッセージ投稿
    @messages = @room.messages #このルームのメッセージを全て取得
    @entry = Entry.find_by(room_id: @room.id)
    @society = Society.find(@entry.society_id)
    @user = User.find(@entry.user_id)
  end

  def create
    
    if user_signed_in?
      #userがログインしてたらuser_idを, shopがログインしてたらshop_idを@roomにいれる
      @search_entry = Entry.find_by(user_id: current_user.id,society_id: params[:id])
      if @search_entry.nil?
      @room = Room.create
      @entry = Entry.create(user_id: current_user.id, society_id: params[:id],room_id: @room.id)
      else
        @room = Room.find(@search_entry.room_id)
      end
    elsif society_signed_in?
      @search_entry = Entry.find_by(user_id: params[:id],society_id: current_society.id)
      @room = Room.find(@search_entry.room_id)
    else
      redirect_to "/"
    end
      redirect_to :action => "show", :id => @room.id
  
  end
  
  private
  # def room_user_params
  #   params.require(:room).permit(:user_id)
  # end

end
