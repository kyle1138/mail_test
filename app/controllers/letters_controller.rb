class  LettersController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def index

    @user = User.find_by(id: session[:user_id])
    @letters = Letter.find_by(letter_params)


  end


  private
    def letter_params
      params.require(:letter).permit( :sender , :recipient )
    end

end
