require "faker"
CATEGORIES = [
  {
    name: "Restaurants",
    subcategories: [
      {
        name: "Delivery Service"
      },
      {
        name: "Fast Food"
      },
      {
        name: "Cafes"
      },
      {
        name: "Pubs"
      },
      {
        name: "Sushi"
      },
      {
        name: "Thai"
      },
      {
        name: "Chinese"
      },
      {
        name: "Greek"
      },
      {
        name: "Indian"
      },
      {
        name: "Mexican"
      },
      {
        name: "Spanish"
      },
      {
        name: "Turkish"
      },
      {
        name: "Italian"
      },
      {
        name: "Steak House"
      }
    ]
  },
  {
    name: "Medicine",
    subcategories: [
      {
        name: "General Practitioners"
      },
      {
        name: "Dentists"
      },
      {
        name: "Pharmacies"
      },
      {
        name: "Ophthalmologists"
      },
      {
        name: "Gynecologists"
      },
      {
        name: "Dermatologists"
      },
      {
        name: "ENT Doctors"
      },
      {
        name: "Pediatricians"
      },
      {
        name: "Neurologists"
      },
      {
        name: "Orthopedic Surgeons"
      },
      {
        name: "Naturopath"
      },
      {
        name: "Care Services"
      },
      {
        name: "Physiotherapists"
      },
      {
        name: "Psychologists"
      }
    ]
  },
  {
    name: "Handiwork",
    subcategories: [
      {
        name: "Hardware Stores"
      },
      {
        name: "Roofing"
      },
      {
        name: "Electricians"
      },
      {
        name: "Window"
      },
      {
        name: "Glaziers"
      },
      {
        name: "Heating and Ventilation"
      },
      {
        name: "Plumber"
      },
      {
        name: "Painter"
      },
      {
        name: "Metal Workers"
      },
      {
        name: "Pipe Cleaners"
      },
      {
        name: "Plumbing Contractors"
      },
      {
        name: "Locksmiths"
      },
      {
        name: "Chimney Sweeper"
      },
      {
        name: "Plasterers"
      },
      {
        name: "Carpenter"
      }
    ]
  },
  {
    name: "Law",
    subcategories: [
      {
        name: "Lawyers"
      },
      {
        name: "Notary"
      },
      {
        name: "Employment Lawyers"
      },
      {
        name: "Building Lawyers"
      },
      {
        name: "Inheritance Lawyers"
      },
      {
        name: "Family Lawyers"
      },
      {
        name: "Immigration Lawyers"
      },
      {
        name: "Mediation"
      },
      {
        name: "Tenancy Lawyers"
      },
      {
        name: "Patent"
      },
      {
        name: "Social Lawyers"
      },
      {
        name: "Tax Lawyers"
      },
      {
        name: "Traffic Lawyers"
      },
      {
        name: "Divorce Lawyers"
      }
    ]
  },
  {
    name: "House Construction",
    subcategories: [
      {
        name: "Demolition Works"
      },
      {
        name: "Architect"
      },
      {
        name: "Dredging"
      },
      {
        name: "Construction Planning"
      },
      {
        name: "House Renovation"
      },
      {
        name: "Property Developer"
      },
      {
        name: "Construction Company"
      },
      {
        name: "Air conditioning"
      },
      {
        name: "Road Construction"
      },
      {
        name: "Civil Engineering"
      },
      {
        name: "Construction Drying"
      },
      {
        name: "Earthwork"
      },
      {
        name: "Concrete work"
      }
    ]
  },
  {
    name: "Auto",
    subcategories: [
      {
        name: "Towing Service"
      },
      {
        name: "Automobile"
      },
      {
        name: "Car glaziers"
      },
      {
        name: "Car painting"
      },
      {
        name: "Car Care"
      },
      {
        name: "Car repairs"
      },
      {
        name: "Auto parts and accessories"
      },
      {
        name: "Used cars"
      },
      {
        name: "Bodyshop"
      },
      {
        name: "Tires"
      },
      {
        name: "Car rental"
      },
      {
        name: "Driving schools"
      },
      {
        name: "Commercial vehicles"
      },
      {
        name: "Motorcycle and accessories"
      },
      {
        name: "Gas stations"
      },
      {
        name: "Carwash"
      }
    ]
  },
  {
    name: "Accommodations",
    subcategories: [
      {
        name: "Hotels"
      },
      {
        name: "Guest House"
      },
      {
        name: "Room rentals"
      },
      {
        name: "Holiday homes and apartments"
      },
      {
        name: "Youth Hostels"
      },
      {
        name: "Housing and accommodation brokerage"
      },
      {
        name: "Housing Company"
      },
      {
        name: "Property and property management"
      },
      {
        name: "Transport"
      }
    ]
  }
]

STREETS = [
  "Potsdamer Platz, 10785",
  "Adlerbrücke, 10785",
  "Ahornsteig, 10785",
  "Alte Potsdamer Straße, 10785",
  "Am Karlsbad, 10785",
  "Am Park, 10785",
  "Apellplatz, 10785",
  "Auguste-Hauschner-Straße, 10785",
  "Akazienstraße, 10823",
  "Apostel-Paulus-Straße, 10823",
  "Belziger Straße, 10823",
  "Gothaer Straße, 10823",
  "Grunewaldstraße, 10823",
  "Klixstraße, 10823",
  "Meininger Straße, 10823",
  "Schützenstraße, 12165",
  "Schmidt-Ott-Straße, 12165",
  "Waetzoldtstraße, 12165",
  "Wolfensteindamm, 12165",
  "Wrangelstraße, 12165",
  "Wulffstraße, 12165",
  "Zeunepromenade, 12165",
  "Alt-Stralau, 10245",
  "Am Oberbaum, 10245",
  "Am Schwanenberg, 10245",
  "Ankerplatz, 10245",
  "Bartholomäusufer, 10245",
  "Böcklinstraße, 10245",
  "Bödikerstraße, 10245",
  "Bossestraße, 10245",
  "Boxhagener Straße, 10245",
  "Caroline-Herschel-Platz, 10245",
  "Caroline-Tübbecke-Ufer, 10245",
  "Corinthstraße, 10245",
  "Döringstraße, 10245",
  "Dirschauer Straße, 10245",
  "Dora-Benjamin-Park, 10245",
  "Ehrenbergstraße, 10245",
  "Elsenbrücke, 10245",
  "Engelwiese, 10245",
  "Adelheidallee, 13507",
  "Alexandersteg, 13507",
  "Alt-Tegel, 13507",
  "Am Borsigturm, 13507",
  "Am Buddeplatz, 13507",
  "Am Tegeler Hafen, 13507",
  "Amselweg, 13507",
  "An der Mühle, 13507",
  "Ascheberger Weg, 13507",
  "Attendorner Weg, 13507",
  "Beckumer Straße, 13507",
  "Asternweg, 12347",
  "Bürgerstraße, 12347",
  "Birkenallee, 12347",
  "Braunlager Straße, 12347",
  "Britzer Brücke, 12347",
  "Britzer Damm, 12347",
  "Britzer Straße, 12347",
  "Brunnenweg, 12347",
  "Buschrosenplatz, 12347",
  "Buschrosensteig, 12347",
  "Cafeastraße, 12347",
  "Dahliensteg, 12347",
  "Douglasienweg, 12347",
  "Drosselgasse, 12347"
]

def address_attributes
  street, zipcode = STREETS.sample.split(", ")
  {
    address_line_1: "#{street} #{Faker::Address.building_number}",
    city: "Berlin",
    country: "DE",
    zipcode: zipcode
  }
end

namespace :dev do
  desc "Generates seed data for development"
  task seed_data: :environment do
    CATEGORIES.each do |main_category|
      category = Category.create(name: main_category[:name])
      main_category[:subcategories].each do |subcategory|
        Category.create(name: subcategory[:name], parent_category: category)
      end
    end
    restaurant_category = Category.friendly.find("restaurants")
    restaurant_subcategories_ids = restaurant_category.subcategories.map(&:id)
    restaurant_operating_hours = [
      {
        day_of_week: 0,
        opening_timing: "12:00:00",
        closing_timing: "22:00:00"
      },
      {
        day_of_week: 1,
        opening_timing: "12:00:00",
        closing_timing: "00:00:00"
      },
      {
        day_of_week: 2,
        opening_timing: "12:00:00",
        closing_timing: "22:00:00"
      },
      {
        day_of_week: 3,
        opening_timing: "12:00:00",
        closing_timing: "22:00:00"
      },
      {
        day_of_week: 4,
        opening_timing: "12:00:00",
        closing_timing: "00:00:00"
      },
      {
        day_of_week: 5,
        opening_timing: "10:00:00",
        closing_timing: "00:00:00"
      },
      {
        day_of_week: 6,
        opening_timing: "10:00:00",
        closing_timing: "00:00:00"
      }
    ]
    def create_businesses
      Business.create(
        name: Faker::Company.name,
        general_info: Faker::Company.description,
        category_ids: [
          restaurant_category.id,
          restaurant_subcategories_ids.sample
        ],
        operating_hours_attributes: restaurant_operating_hours,
        address_attributes: address_attributes
      )
    end

    def create_restaurants(restaurant_category, restaurant_subcategories_ids, restaurant_operating_hours)
      Business.create(
        name: Faker::Restaurant.name,
        general_info: Faker::Restaurant.description,
        category_ids: [
          restaurant_category.id,
          restaurant_subcategories_ids.sample
        ],
        operating_hours_attributes: restaurant_operating_hours,
        address_attributes: address_attributes
      )
    end
    Faker::Config.locale = "de"
    30.times do
      create_restaurants(restaurant_category, restaurant_subcategories_ids, restaurant_operating_hours)
    end
  end
end
