class ApplicationController < ActionController::Base
  def authenticate_user
    if current_user == nil
      flash[:notice] = 'ログインしていません！'
      redirect_to new_session_path
    end
  end
  protect_from_forgery with: :exception
  include SessionsHelper
end
