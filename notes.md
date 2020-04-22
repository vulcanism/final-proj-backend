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

    Home Page ->
    Cryptids List ->
    Individual Cryptid Page w/ Sighting List ->
    Individual Sighting Page