class Inquiry < ApplicationRecord
  has_many :picures
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :mail ,presence: true
end
