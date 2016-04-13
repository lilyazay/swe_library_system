class Student < ActiveRecord::Base

  has_secure_password
  EMAIL_FORMAT = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
  validates :name, :presence => true, :uniqueness => true, :length => { :in => 2..50 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_FORMAT
  validates :student_type, :inclusion  => { :in => [ 'U','A','P' ] }

  has_many :checkout_histories
  has_many :books, through: :checkout_histories

end
