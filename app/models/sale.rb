class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :plan
  belongs_to :user
end
