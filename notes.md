Cryptid
    has_many :sightings

    :name - string
    :size - string
    :classification - string


Sighting
    belongs_to :cryptid

    :cryptid_id - integer
    :date - datetime
    :location - string
    :note - string