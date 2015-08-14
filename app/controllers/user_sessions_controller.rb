class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(user_session_params)
    respond_to do |format|
      if @user_session.save
        format.js { render 'shared/signin.js.erb' }
      else
        format.js { render 'shared/render_errors.js.erb', locals: { object: @user_session } }
      end
    end
  end

  def destroy
    current_user_session.destroy
    respond_to do |format|
      format.js { render 'shared/signout.js.erb'}
    end
  end

  private

  def user_session_params
    params.require(:user_session).permit(:email, :password, :remember_me)
  end
end
