class MypageController < ApplicationController
  def index
    if user_signed_in?
      @societies = Society.all
      rooms = current_user.rooms
      #自分が入ってるroomの相手のidを格納する
      @society_ids = []
      rooms.each do |r|
        @society_ids << r.society_id
      end
    
    elsif society_signed_in?
      @users = User.all
      rooms = current_shop.rooms
      #自分が入ってるroomの相手のidを格納する
      @user_ids = []
      rooms.each do |r|
        @user_ids << r.user_id
      end
    end
  end
  def usermypage
    @user = User.find(params[:id])
  end
  def societymypage
    @society = Society.find(params[:id])

    if society_signed_in?
      @users = []
      @entries = Entry.where(society_id: current_society.id)
      @entries.each do |entry|
        @user = User.find(entry.user_id)
        @users.push(@user)
      end
    end
    end
  end
 


