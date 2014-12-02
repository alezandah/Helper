class Contribution < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :donation_amount, presence: true
  validates :email, presence: true
  validates :comment, presence: true

  belongs_to :campaign
  belongs_to :user
end
