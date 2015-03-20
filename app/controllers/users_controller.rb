class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to MailTailor!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
      @letters = Letter.where(:recipient => @user.name.downcase) if @user
    @senders = @letters.select(:sender).distinct
  end

  # def show
  #   @user = User.find(params[:id])
  #
  #   @senders = @user.letters.map { |letter| letter.sender }
  # end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
