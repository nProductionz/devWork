class Request < ApplicationRecord
  belongs_to :user
  has_many :commissions
end
