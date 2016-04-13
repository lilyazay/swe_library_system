class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :check_student, only: [:checkout]

  # GET /books
  # GET /books.json
  def index
    @books = Book.search(params[:search])
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    if check_if_admin
      @book = Book.new(:available=>true)
    elsif check_if_student
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: 'Students cannot add new books.'}
      end
    else
      respond_to do |format|
        format.html{redirect_to login_path, notice: 'Only logged in admins can add new books.'}
      end
    end
  end

  # GET /books/1/edit
  def edit
    if check_if_admin
      @books = Book.where(id: params[:id])
    elsif check_if_student
      respond_to do |format|
        format.html{redirect_to student_home_path, notice: 'Students cannot add new books.'}
      end
    else
      respond_to do |format|
        format.html{redirect_to login_path, notice: 'Only logged in admins can add new books.'}
      end
    end
  end

  # POST /books
  # POST /books.json
  def create
    if check_if_admin
      @book = Book.new(book_params)

      respond_to do |format|
        if @book.save
          format.html { redirect_to @book, notice: 'Book was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    if check_if_admin
      respond_to do |format|
        if @book.update(book_params)
          format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    if check_if_admin
      if @book.status == "Available"
        @book.destroy
        respond_to do |format|
          format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
        end
      else
        respond_to do |format|
          format.html { redirect_to books_url, notice: 'Book cannot be deleted now because it is not available.' }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to student_home_path, notice: 'Only logged in admins can delete books' }
      end
    end
  end

  # CHECKOUT books
  def checkout
      @student = Student.find_by_id(session[:current_student_id])

      @book = Book.find_by_id(params[:id])
      available = @book.available

      if @student.checkouts == 0
        respond_to do |format|
          format.html { redirect_to books_url, notice: 'You have met the amount of books you can checkout at a time. Please check-in books to checkout other ones.' }
        end
      if available == true
       @book.available = false
       @student.checkouts = (@student.checkouts - 1)

        if (@student.student_type == 'A' || @student.student_type == 'P')

          @checkout_history = CheckoutHistory.new(:isbn => @book.isbn, :checkout_timestamp => DateTime.now.utc, :return_timestamp => DateTime.new(9999,12,31).utc)
          @book.save
          @checkout_history.save

          respond_to do |format|
              format.html { render :checkout_details }
              format.json { render json: @book }
            end
        else
          @checkout_history = CheckoutHistory.new(:email => @student.email, :isbn => @book.isbn, :checkout_timestamp => DateTime.now.utc, :return_timestamp => DateTime.new(9999,12,31).utc)
          @book.save
          @checkout_history.save
          respond_to do |format|
           format.html { redirect_to student_home_path, notice: 'Book was successfully checked out.' }
           format.json { head :no_content }
          end
        end
      else
        @book.available = true
        @book.save
        @checkout_history = CheckoutHistory.find_by(isbn: @book.isbn, return_timestamp: '9999-12-31T00:00:00+00:00')
        @checkout_history.return_timestamp = DateTime.now.utc
        @checkout_history.save
        @student.checkouts = (@student.checkouts + 1)
        if check_if_admin
        respond_to do |format|
          format.html { redirect_to admin_home_path, notice: 'Book was successfully returned.' }
          format.json { head :no_content }
        end
        else
          respond_to do |format|
            format.html { redirect_to student_home_path, notice: 'Book was successfully returned.' }
            format.json { head :no_content }
          end
        end
      end
    end
    end

  helper_method :checkout

  def checkout_details

  end

  def history

    @book = Book.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find_by_isbn(params[:isbn])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.permit(:isbn, :title, :description, :author, :status)
    end


    def check_student
      if !signed_in?
      respond_to do |format|
        format.html{redirect_to root_url, notice: "Please login to checkout or check-in books." }
        end
      end
    end
  end

