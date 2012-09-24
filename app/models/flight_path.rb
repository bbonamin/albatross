class FlightPath
	include Mongoid::Document
	include Tenacity

	field :flight_id
	field :time, type: DateTime
	field :latitude
	field :longitude
	field :altitude

	# t_belongs_to :flight
end