class User < ActiveRecord::Base
  attr_accessible :email, :username, :date_of_birth
end
