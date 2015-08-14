class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_user_signup
  before_action :set_user_login
  before_action :set_new_gif

  private

  def set_user_signup
    @user = User.new
  end

  def set_user_login
    @user_session = UserSession.new
  end

  def set_new_gif
    @gif = Gif.new
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  helper_method :current_user_session, :current_user
end
