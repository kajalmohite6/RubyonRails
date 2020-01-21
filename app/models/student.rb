class Student < ActiveRecord::Base

  validates :first_name, presence: true, length: {minimum: 1,maximum: 10}
  validates :last_name, presence: true, length: {minimum: 1,maximum: 10}
  validates :phone, presence: true, length: {:is=>10}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end
