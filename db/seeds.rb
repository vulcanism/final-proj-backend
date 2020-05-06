cryptid1 = Cryptid.create(name: "Nessie", size: "Huge", classification: "Relic")

sighting1 = Sighting.create(cryptid_id: 1, date: DateTime.now, location: "Lake", note: "Got a glimpse, then it went back underwater")