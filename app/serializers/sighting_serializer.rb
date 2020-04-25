class SightingSerializer
    include FastJsonapi::ObjectSerializer

    attributes :cryptid_id, :date, :location, :note

    belongs_to :cryptid

end