class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    respond_to do |format|
      if @user.save
        format.js { render 'shared/signup.js.erb' }
      else
        format.js { render 'shared/render_errors.js.erb', locals: { object: @user } }
      end
    end
  end

  private

  def users_params
    params.require(:user).permit(:fullname, :username, :email, :password, :password_confirmation)
  end
end
