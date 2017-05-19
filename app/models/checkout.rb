class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader
  validates :book_id, presence: true, numericality: true
  validates :reader_id, presence: true
  validates :checkout_date, presence: true
end
