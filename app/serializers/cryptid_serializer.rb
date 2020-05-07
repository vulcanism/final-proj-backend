class CryptidSerializer < ActiveModel::Serializer   

    attributes :id, :name, :size, :classification

    has_many :sightings

end