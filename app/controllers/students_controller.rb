class StudentsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  wrap_parameters :student, include: [:name, :email, :password, :password_confirmation, :student_type]
  # GET /students
  # GET /students.json
  def index
    if check_if_admin
      @students = Student.all
    else
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: "Access to requested link is denied" }
      end
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    if check_if_student || check_if_admin
      @students = Student.where(id: params[:id])
    else
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: "Access to requested link is denied" }
      end
    end
  end

  # GET /students/new
  def new
    @student = Student.new
    # Even students who are not logged in can access the form and hence no authorization
  end

  # GET /students/1/edit
  def edit
    if check_if_student
      if params[:id].to_s != Student.find_by_id(session[:current_student_id]).id.to_s
        respond_to do |format|
          format.html{redirect_to student_home_path, notice: "No sufficient permissions to edit other students"}
        end
      end
    end
  end

  # POST /students
  # POST /students.json
  def create
    if ['A'].include?(student_params[:student_type])
      if session[:current_student_id].nil?
        redirect_to login_path, notice: "Only logged in admins can add new admins"
      elsif check_if_student
        redirect_to student_home_path, notice: "No sufficient permissions to add admin"
      elsif check_if_admin
        @student = Student.new(student_params)
        if @student.save
          #Tell the studentMailer to send a welcome email after save
          StudentMailer.welcome_email(@student).deliver_later
          redirect_to admin_home_path, notice: 'Admin was successfully created'
        else
          render :new
        end
      end
    elsif ['P'].include?(student_params[:student_type])
      if session[:current_student_id].nil?
        redirect_to login_path, notice: "Preconfigured admin cannot be created"
      elsif check_if_student
        redirect_to student_home_path, notice: "Preconfigured admin cannot be created"
      elsif check_if_admin
        redirect_to admin_home_path, notice: "Preconfigured admin cannot be created"
      end
    elsif ['U'].include?(student_params[:student_type])
      @student = Student.new(student_params)
      respond_to do |format|
        if @student.save
          #Tell the studentMailer to send a welcome email after save
          StudentMailer.welcome_email(@student).deliver_later
          if session[:current_student_id].nil?
            format.html { redirect_to login_path, notice: 'Student was successfully created.Login to access the system' }
          else
            format.html {redirect_to :back, notice: 'Student was successfully created.Login to access the system' }
          end
        else
          format.html { render :new }
        end
    end
    end
    end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    if session[:current_student_id].nil?
      if check_if_admin
      redirect_to login_path, notice: "Only logged in admins can edit admins"
      else
        redirect_to login_path, notice: "Only logged in students can edit students"
      end
    end

    if params[:id].to_s != Student.find_by_id(session[:current_student_id]).id.to_s
       if check_if_student
        redirect_to student_home_path,notice: "students do not have permissions to update other students"
      elsif check_if_admin
        redirect_to admin_home_path,notice: "Admins do not have permissions to update other students"
      end
    end

    if ['A','P'].include?(student_params[:student_type]) && check_if_student
        redirect_to student_home_path, notice: "No sufficient permissions to edit admin"
    elsif  student_params[:student_type] == 'U' && check_if_admin
        redirect_to admin_home_path, notice: "No sufficient permissions to edit students"
    elsif student_params[:student_type] == 'P'
      redirect_to admin_home_path, notice: "Preconfigured admin details cannot be updated"
    else
      respond_to do |format|
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  def admin_index
    if check_if_admin
      @students = Student.where(student_type: ['A','P'])
    else
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: "Access to requested link is denied" }
      end
    end
  end
  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    if check_if_admin
      @checkout_histories=CheckoutHistory.find_by_email(@student.email);
      if @checkout_histories.nil?
      @student.destroy
    respond_to do |format|
      format.html { redirect_to students_path, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end

      else
      @checkout_histories=CheckoutHistory.all
      @checkout_histories.each do |checkout_history|
          if @checkout_histories.last == checkout_history

          puts checkout_history.return_timestamp
          puts DateTime.new(9999,12,31).utc
          puts checkout_history.return_timestamp=='9999-12-31T00:00:00+00:00'


          if !(checkout_history.return_timestamp=='9999-12-31T00:00:00+00:00')
          @student.destroy
          respond_to do |format|
            format.html { redirect_to students_path, notice: 'Student was successfully destroyed.' }
            format.json { head :no_content }
          end
          else
            respond_to do |format|
              format.html { redirect_to students_path, notice: 'Student cannot be destroyed as he has a checked out book.' }
              format.json { head :no_content }
            end
          end
      end
      end
    end
    end
    end

  def delete_admin
if check_if_admin
      @student=Student.find_by_id(params[:id])
      @checkout_histories=CheckoutHistory.find_by_email(@student.email);
      if @checkout_histories.nil?
      @student.destroy
    respond_to do |format|
      format.html { redirect_to admin_index_path, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end

      else
      @checkout_histories=CheckoutHistory.all
      @checkout_histories.each do |checkout_history|
          if @checkout_histories.last == checkout_history

          puts checkout_history.return_timestamp
          puts DateTime.new(9999,12,31).utc
          puts checkout_history.return_timestamp=='9999-12-31T00:00:00+00:00'


          if !(checkout_history.return_timestamp=='9999-12-31T00:00:00+00:00')
@student.destroy
          respond_to do |format|
            format.html { redirect_to admin_index_path, notice: 'Student was successfully destroyed.' }
            format.json { head :no_content }
          end
          else
            respond_to do |format|
              format.html { redirect_to admin_index_path, notice: 'Student cannot be destroyed as he has a checked out book.' }
              format.json { head :no_content }
            end
          end
      end
      end
    end
    end

end

  def history
    @student = Student.find(params[:id])
  end

  def admin_home
    if !check_if_student
      @students = Student.where(student_type: ['A','P'])
    else
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: "Access to requested link is denied" }
      end
    end
  end

  def student_home
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:email, :name, :password, :password_confirmation, :student_type)
    end

    def check_if_student
      return true if ['U'].include? Student.find_by_id(session[:current_student_id]).student_type
    end

    def check_if_admin
      return true if ['A','P'].include? Student.find_by_id(session[:current_student_id]).student_type
    end
    def check_if_pre_configured_admin
      return true if Student.find_by_id(session[:current_student_id]).student_type == 'P'
    end
end

