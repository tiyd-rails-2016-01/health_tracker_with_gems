class Weight < ActiveRecord::Base
  validates :weigh_date_on, uniqueness: true
end
