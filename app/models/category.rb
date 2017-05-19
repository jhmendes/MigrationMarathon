class Category < ActiveRecord::Base
  belongs_to :book
  validates :name, presence: true, uniqueness: true
end
