class Flight < ActiveRecord::Base
  attr_accessible :logfile

  validates_presence_of :logfile
end
