class Session < ActiveRecord::Base
  attr_accessible :bio, :title, :description, :cost, :min_age

  belongs_to :user
end
