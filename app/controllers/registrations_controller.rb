class RegistrationsController < ApplicationController


  # this allows users to be created
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :email, :password, :password_confirmation, :dob, :state)
  end
end
