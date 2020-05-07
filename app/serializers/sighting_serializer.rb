class SightingSerializer < ActiveModel::Serializer    

    attributes :id, :cryptid_id, :date, :location, :note

    belongs_to :cryptid

end