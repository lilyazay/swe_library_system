class Book < ActiveRecord::Base
 #attr_accessor :ISBN, :title, :description, :author, :status

  validates :isbn, presence: true
  validates :title, presence: true, length: {within: 2..100}
  validates :publisher, presence: true
  validates :author, presence: true, length: {within: 2..200}
  validates :genre, presence: true
  validates :shelving_code, presence: true
  validates :available, inclusion: { in: [true, false] }
  validates :late, inclusion: { in: [true, false] }

  validates_uniqueness_of :isbn

  has_one :checkout_histories
  has_one :students, through: :checkout_histories

  def self.search(search)
    if search
      self.where('title || author || isbn LIKE ?', "%#{search}%")
    else
      self.all
    end
  end

  def self.filter(filter)
    if filter
      self.where('language || genre LIKE ?', "%#{filter}%")
    else
      self.all
    end
  end
end
