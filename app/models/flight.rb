class Flight < ActiveRecord::Base
	mount_uploader :logfile, LogfileUploader
	
  attr_accessible :logfile

  validates_presence_of :logfile
end
