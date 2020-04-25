class CryptidSerializer
    include FastJsonapi::ObjectSerializer

    attributes :id, :name, :size, :classification

    has_many :sightings

end