class Client < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  has_many :jobs
end
