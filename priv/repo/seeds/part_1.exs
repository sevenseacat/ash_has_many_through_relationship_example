alias Example.World.{City, Country, Region}

# Some sample countries

australia = Country.create!(%{name: "Australia"})
new_zealand = Country.create!(%{name: "New Zealand"})

# Regions in those countries (not an exhaustive list)

victoria = Region.create!(%{name: "Victoria", country_id: australia.id, population: 6_959_234})

western_australia =
  Region.create!(%{name: "Western Australia", country_id: australia.id, population: 2_951_602})

south_australia =
  Region.create!(%{name: "South Australia", country_id: australia.id, population: 1_873_819})

queensland =
  Region.create!(%{name: "Queensland", country_id: australia.id, population: 5_560_452})

tasmania = Region.create!(%{name: "Tasmania", country_id: australia.id, population: 575_660})

new_south_wales =
  Region.create!(%{name: "New South Wales", country_id: australia.id, population: 8_469_597})

northern_territory =
  Region.create!(%{name: "Northern Territory", country_id: australia.id, population: 254_263})

australian_capital_territory =
  Region.create!(%{
    name: "Australian Capital Territory",
    country_id: australia.id,
    population: 472_803
  })

auckland = Region.create!(%{name: "Auckland", country_id: new_zealand.id, population: 1_798_300})
northland = Region.create!(%{name: "Northland", country_id: new_zealand.id, population: 204_800})
waikato = Region.create!(%{name: "Waikato", country_id: new_zealand.id, population: 536_200})

bay_of_plenty =
  Region.create!(%{name: "Bay of Plenty", country_id: new_zealand.id, population: 355_200})

gisborne = Region.create!(%{name: "Gisborne", country_id: new_zealand.id, population: 53_300})

hawkes_bay =
  Region.create!(%{name: "Hawke's Bay", country_id: new_zealand.id, population: 185_400})

taranaki = Region.create!(%{name: "Taranaki", country_id: new_zealand.id, population: 130_800})

manawatu =
  Region.create!(%{name: "Manawatū-Whanganui", country_id: new_zealand.id, population: 263_300})

wellington =
  Region.create!(%{name: "Wellington", country_id: new_zealand.id, population: 550_600})

tasman = Region.create!(%{name: "Tasman", country_id: new_zealand.id, population: 60_000})
nelson = Region.create!(%{name: "Nelson", country_id: new_zealand.id, population: 55_200})

marlborough =
  Region.create!(%{name: "Marlborough", country_id: new_zealand.id, population: 52_300})

west_coast = Region.create!(%{name: "West Coast", country_id: new_zealand.id, population: 34_800})

canterbury =
  Region.create!(%{name: "Canterbury", country_id: new_zealand.id, population: 694_400})

otago = Region.create!(%{name: "Otago", country_id: new_zealand.id, population: 257_200})
southland = Region.create!(%{name: "Southland", country_id: new_zealand.id, population: 106_100})

# Cities in those regions (population over 30,000)

%{
  victoria => [
    {"Melbourne", 4_585_537},
    {"Geelong", 180_239},
    {"Ballarat", 105_348},
    {"Bendigo", 100_649},
    {"Melton", 76_346},
    {"Shepparton-Maroopna", 49_862},
    {"Sunbury", 38_010},
    {"Wodonga", 37_839},
    {"Mildura", 35_652},
    {"Warrnambool", 32_894}
  ],
  western_australia => [
    {"Perth", 2_043_762},
    {"Bunbury", 75_196},
    {"Geraldton", 32_717},
    {"Albany", 31_128}
  ],
  south_australia => [
    {"Adelaide", 1_245_011}
  ],
  queensland => [
    {"Brisbane", 2_287_896},
    {"Gold Coast", 607_665},
    {"Sunshine Coast", 284_131},
    {"Townsville", 173_724},
    {"Cairns", 153_181},
    {"Toowoomba", 108_398},
    {"Mackay", 80_455},
    {"Rockhampton", 63_151},
    {"Hervey Bay", 57_722},
    {"Bundaberg", 52_370},
    {"Gladstone", 34_703}
  ],
  tasmania => [
    {"Hobart", 204_010},
    {"Launceston", 87_345}
  ],
  new_south_wales => [
    {"Sydney", 4_698_656},
    {"Newcastle", 348_539},
    {"Central Coast", 325_255},
    {"Wollongong", 280_153},
    {"Maitland", 89_597},
    {"Tweed Heads", 63_721},
    {"Albury", 53_677},
    {"Coffs Harbour", 51_069},
    {"Wagga Wagga", 49_686},
    {"Port Macquarie", 47_793},
    {"Orange", 40_127},
    {"Dubbo", 38_783},
    {"Queanbeyan", 37_511},
    {"Bathurst", 36_230},
    {"Tamworth", 35_415},
    {"Nowra-Bomaderry", 33_583},
    {"Blue Mountains", 30_049}
  ],
  northern_territory => [
    {"Darwin", 122_207}
  ],
  australian_capital_territory => [
    {"Canberra", 466_566}
  ],
  auckland => [
    {"Auckland", 1_531_400},
    {"Hibiscus Coast", 69_070}
  ],
  canterbury => [
    {"Christchurch", 403_300},
    {"Rolleston", 31_600}
  ],
  wellington => [
    {"Wellington", 214_200},
    {"Lower Hutt", 114_500},
    {"Porirua", 60_600},
    {"Upper Hutt", 45_000},
    {"Paraparaumu", 30_300}
  ],
  waikato => [
    {"Hamilton", 192_000}
  ],
  bay_of_plenty => [
    {"Tauranga", 162_800},
    {"Rotorua", 58_800}
  ],
  otago => [
    {"Dunedin", 106_700}
  ],
  manawatu => [
    {"Palmerston North", 83_100},
    {"Whanganui", 42_500}
  ],
  hawkes_bay => [
    {"Napier", 67_500},
    {"Hastings", 52_200}
  ],
  taranaki => [
    {"New Plymouth", 60_100}
  ],
  northland => [
    {"Whangārei", 56_800}
  ],
  southland => [
    {"Invercargill", 51_700}
  ],
  nelson => [
    {"Nelson", 51_300}
  ],
  gisborne => [
    {"Gisborne", 38_800}
  ],
  marlborough => [
    {"Blenheim", 30_600}
  ]
}
|> Enum.each(fn {region, cities} ->
  Enum.each(cities, fn {name, population} ->
    City.create!(%{name: name, population: population, region_id: region.id})
  end)
end)
