class Artist < ApplicationRecord
  has_many :reviews
  has_many :commissions
end
