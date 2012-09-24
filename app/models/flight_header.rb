class FlightHeader
	include Mongoid::Document
	include Tenacity

	# t_belongs_to :flight

	field :flight_id
	field :key
	field :value
end