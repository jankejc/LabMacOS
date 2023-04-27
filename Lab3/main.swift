class Location 
{
    var id: Int?
    var type: String?
    var name: String?
    var rating: Int?

    init(id: Int, type: String, name: String, rating: Int)
    {
        self.id = id
        self.type = type
        self.name = name
        self.rating = rating
    }

    func getRating() -> Int
    {
        if let value = self.rating { 
            return value
        } else { 
            return 0
        }
    }

    func getName() -> String
    {
        if let value = self.name { 
            return value
        } else { 
            return ""
        }
    }

    func isRestaurant() -> Bool
    {
        if let value = self.type { 
            if value == "restauracje"
            {
                return true
            }
        }
        return false
    }
}

class City 
{
    var id: Int?
    var name: String?
    var description: String?
    var latitude: String? 
    var longitude: String? 
    var keywords = Array<String>()
    var locations = Array<Location>()

    init(){}

    init(id: Int, name: String, description: String, latitude: String, longitude: String)
    {
        self.id = id
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
    }

    func getKeywords() -> Array<String> 
    {
        return self.keywords
    }

    func getLocations(newLocation: Location)
    {
        locations.append(newLocation)
    }

    func setKeywords(keyword: String)
    {
        keywords.append(keyword)
    }

    func setLocations(newLocation: Location)
    {
        locations.append(newLocation)
    }

    func getName() -> String 
    {
        if let value = self.name { 
            return value
        } else { 
            return ""
        }
    }

    func keywordExists(keywordValue: String) -> Bool
    {
        for i in 0...(keywords.count - 1)
        {
            if keywords[i] == keywordValue
            {
                return true
            }
        }
        return false
    }

    func is5StarRestaurant() -> Bool
    {
        for i in locations
        {
            if i.getRating() == 5 && i.isRestaurant() == true
            {
                return true
            }
        }
        return false
    }

    func locationsSortedByRating() -> Array<Location>
    {
        var sortedLocations = Array<Location>()
        for i in (1...5).reversed()
        {
            for elem in locations 
            {
                if elem.getRating() == i
                {
                    sortedLocations.append(elem)
                }
            }
        }
        return sortedLocations
    }

    func howMany5StarLocations() -> (Int, Array<Location>) 
    {
        var star5Locations = Array<Location>()
        var howMany5StarLocations: Int = 0
        for elem in locations
        {
            if elem.getRating() == 5
            {
                howMany5StarLocations += 1
                star5Locations.append(elem)
            }
        }

        return (howMany5StarLocations, star5Locations)
    }
}

var cityNames = ["Piza", "Lukka", "Paryż", "Saint-Pierre", "Fort-de-France", "Saint-Yrieix-la-Perche", "Florencja", "Barcelona", "Madrid", "Warszawa", "Kuweit", "Los Angeles", "Berlin", "Wilno", "Bratysława", "Zagrzeb", "Rzym", "Jerozolima", "Sopot", "Betlejem"]

var descriptionsNumber: Int = 12
var descriptions = ["Fajne klimatyczne miasto.", "Zbyt turystyczne miasto.", "Bardzo ciepłe miasto, mało zabytków.", "Miasto warte zobaczenia, szczególnie atrakcje.", "Reklama na każdym rogu, ale poza miastem jest spokojniej.", "Świetna komunikacja, można zobaczyć bardzo dużo!", "Miasto żyje 24/7.", "Widoki są cudowne, turystyka jeszcze nie owładnęła tego miejsca.", "Piaszczysta plaża, ciepło.", "Po 18 robi się spokojnie, idealnie dla tych, którzy chcą coś zobaczyć a potem odpocząć.", "Niesamowita hitoria miasta, przewodnicy znają się na fachu.", "Zabytki są nieziemskie, miasto trzeba zobaczyć, żadne zdjęcia tego nie oddają."]

var latitudes = ["14°40′N", "16°40′S", "14°40′N", "54°40′N", "23°40′S", "76°40′N", "22°40′S", "34°40′S", "65°40′N", "59°40′N", "9°40′S", "21°40′S", "44°40′N", "87°40′S", "67°40′N", "55°40′S", "43°40′N", "87°40′S", "12°40′N", "62°40′S"]

var longitudes = ["14°40′W", "16°40′E", "14°40′E", "54°40′E", "23°40′W", "76°40′E", "22°40′E", "34°40′W", "65°40′W", "59°40′W", "9°40′E", "21°40′W", "44°40′E", "87°40′W", "67°40′E", "55°40′E", "43°40′E", "87°40′W", "12°40′E", "62°40′W"]

var keywordsNumber: Int = 28
var keywords = ["miasteczko", "zabytki", "ciepło", "klimatycznie", "bardzo ciepło", "historia", "sport", "ocean", "plaża", "turystycznie", "miasto", "góry", "widoki", "atrakcje", "kluby", "wietrznie", "zimno", "bardzo zimno", "umiarkowanie", "koncerty", "wydarzenia kulturalne", "muzea", "centra handlowe", "tłok", "spokój", "eko-miasto", "rozwój", "duchowo"]

var locationsNamesNumber: Int = 26
var locationsNames = ["Klub Mechanika", "Teatr Wielki", "Kino Helios", "Sport Pub", "Andrew Bar", "Restauracja Bulion", "American Stakes", "Naleśniki Regionalne", "Piwomaniac", "Klub Inżyniera", "Zupa dla Malucha", "Restauracja Ocean", "Restauracja Sea", "Fries, fries, fries!", "Rolo-parolo", "Italy pizzzza.", "Ring, ring.", "Down the Opera", "Kino Classica", "Cyrk Static", "Camp Nou Pizzeria", "Bernabeu Pub", "Restauracja On-Yacht.", "Down the road Pub", "Kino Near", "Restauracja Tip, top!"]
var locationsTypesNumber: Int = 6
var locationsTypes = ["muzea", "zabytki", "puby", "restauracje", "obiekty kulturalne", "natura"]


var newCity: City
var newLocation: Location
var cityIdCounter: Int = 0
var locationIdCounter: Int = 0
var ratingCounter: Int = 1
var cities = Array<City>()
for i in 0...(20 - 1) 
{
    
    newCity = City(id: cityIdCounter, name: cityNames[i], description: descriptions[(Int.random(in: 1...100))%descriptionsNumber], latitude: latitudes[i], longitude: longitudes[i])


    for _ in 1...5 
    {
        newCity.setKeywords(keyword: keywords[(Int.random(in: 1...100))%keywordsNumber])
    }
    
    
    for _ in 1...5 
    {
        newLocation = Location(id: locationIdCounter, type: locationsTypes[(Int.random(in: 1...100))%locationsTypesNumber], name: locationsNames[(Int.random(in: 1...100))%locationsNamesNumber], rating: Int.random(in: 1...5))
        newCity.setLocations(newLocation: newLocation)
        ratingCounter += 1
        locationIdCounter += 1
    }
    
    cities.append(newCity)

    cityIdCounter += 1
}

//print(cities.count)

// nameSearch returns list of cities named as typed in
func nameSearch(citiesArray: Array<City>, name: String) -> Array<City> 
{
    var searchedCities = Array<City>()
    for i in 0...(cities.count - 1)
    {
        if cities[i].getName() == name 
        {
            searchedCities.append(cities[i])
        }
    }

    return searchedCities
}


// keywordSearch returns list of cities where keyword typed in is in keywords of city
func keywordSearch(citiesArray: Array<City>, keyword: String) -> Array<City> 
{
    var searchedCities = Array<City>()
    for i in 0...(cities.count - 1)
    {
        if cities[i].keywordExists(keywordValue: keyword) == true 
        {
            searchedCities.append(cities[i])
        }
    }

    return searchedCities
}

// Prints names of cities where are located restaurants with 5 stars
func citiesHave5StarRestaurants(citiesArray: Array<City>)
{
    print("Restauracje 5 gwiazdkowe znajdują się w:")
    for city in citiesArray
    {
        if city.is5StarRestaurant() == true
        {
            print(city.getName())
        }
    }
}

citiesHave5StarRestaurants(citiesArray: cities)

// Returns list of locations, of specific city, sorted by rating
func locationsOfCitySortedByRating(citiesArray: Array<City>, cityName: String) -> Array<Location>
{
    var city: City = City()
    for elem in citiesArray
    {   
        if elem.getName() == cityName
        {
            city = elem
            break
        }
    }

    return city.locationsSortedByRating()
}

var locationsOfCity = locationsOfCitySortedByRating(citiesArray: cities, cityName: "Barcelona")

/*
for elem in locationsOfCity
{
    print(elem.getName())
    print(elem.getRating())
}
*/

// Displays all cities with the number of 5 star locations and print locations
func displayCitiesNumber5StarLocationsAndInformation(citiesArray: Array<City>)
{
    var howMany5StarLocations: Int = 0
    var star5Locations = Array<Location>()
    var star5LocationsNames = Array<String>()
    var result: (Int, Array<Location>)
    for elem in citiesArray
    {   
        star5LocationsNames = []
        result = elem.howMany5StarLocations()
        howMany5StarLocations = result.0
        star5Locations = result.1
        for i in star5Locations
        {
            star5LocationsNames.append(i.getName())
        }
        print("\(elem.getName()) ma \(howMany5StarLocations), 5 gwiazdkowych lokalizacji, a są to: \(star5LocationsNames)")
    }
}

print("-----------")
displayCitiesNumber5StarLocationsAndInformation(citiesArray: cities)