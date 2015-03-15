class  SendersController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def index

    @user = User.find_by(id: session[:user_id])
    @letters = Letter.where(:user_id => @user.id) if @user
    @senders = @letters.senders if @letters


  end

end
