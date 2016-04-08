class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Procured help from http://stackoverflow.com/questions/8500350/how-to-allow-access-only-to-logged-in-students-restricting-direct-entry-of-url
  # and
  # http://guides.rubyonrails.org/v2.3.11/action_controller_overview.html
  helper_method :current_user, :signed_in?
  before_action :require_login

  private
  def current_student
    @_current_student ||= session[:current_student_id] &&
        Student.find_by(id: session[:current_student_id])
  end

  def signed_in?
    current_student != nil
  end

  def require_login
  if !signed_in? && !books_path
    flash[:error] = "You must be logged in to access this section"
    redirect_to login_path # halts request cycle
   end
  end

  def check_if_student
    return true if Student.find_by_id(session[:current_student_id]).student_type == 'U'
  end

  def check_if_admin
    return true if ['A','P'].include? Student.find_by_id(session[:current_student_id]).student_type
  end
  def check_if_pre_configured_admin
    return true if Student.find_by_id(session[:current_student_id]).student_type == 'P'
  end
end
