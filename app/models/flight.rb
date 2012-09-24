class Flight < ActiveRecord::Base
	include Tenacity
	mount_uploader :logfile, LogfileUploader
	
  attr_accessible :logfile

  validates_presence_of :logfile

  t_has_many :flight_paths
  t_has_many :flight_headers

  after_save :extract_igc_information

  private

  def extract_igc_information
  	flight_id = id

  	FlightPath.where(flight_id: flight_id).delete_all
  	FlightHeader.where(flight_id: flight_id).delete_all

  	file_path =  Rails.root.to_s + '/public' + logfile.to_s
  	igc = IGC::Reader.new(file_path)
  	
  	igc.headers.each_pair do |key, value|
  		FlightHeader.create(flight_id: flight_id, key: key, value: value)
  	end

  	igc.flight_path.each_pair do |time, position|
  		FlightPath.create(flight_id: flight_id, time: time, longitude: position[0], latitude: position[1], altitude: position[2])
  	end
  end
end
