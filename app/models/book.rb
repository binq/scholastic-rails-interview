class Book < ActiveRecord::Base
  attr_accessible :title, :author, :isbn_10, :isbn_13, :rank

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn_10, numericality: {only_integer: true, greater_than_or_equal_to: 10 ** 0, less_than: 10 ** 10}, uniqueness: true
  validates :isbn_13, numericality: {only_integer: true, greater_than_or_equal_to: 10 ** 0, less_than: 10 ** 13}, uniqueness: true
  validates :rank, numericality: {only_integer: true, greater_than_or_equal_to: 10 ** 0, less_than: 10 ** 4}

  def isbn_10
    super.to_s.rjust(10, '0')
  end

  def isbn_13
    super.to_s.rjust(13, '0')
  end
end
