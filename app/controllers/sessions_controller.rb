class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new,:create,:destroy]
  def new
  end

  def create
    student = Student.find_by(email: params[:session][:email].downcase)
    if student && student.authenticate(params[:session][:password])
        session[:current_student_id] = student.id
        student_type = Student.find_by_id(session[:current_student_id]).student_type
        if student_type == "U"
          redirect_to student_home_path, notice: "Student logged in successfully"

        else
            redirect_to admin_home_path, notice:"Admin logged in successfully"
        end
    else
        redirect_to login_path, notice: "Email/Password is invalid"
    end
  end

  def destroy
    session[:current_student_id]=nil
    redirect_to login_path, notice: "Signed out successfully"
  end

end
