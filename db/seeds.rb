# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Park.destroy_all
User.destroy_all
Review.destroy_all
Tag.destroy_all

# Users
User.create(first_name: "Zach", last_name: "Weber", username: "ztw", email: "zweb@email.com", password: "password", image: "https://image.flaticon.com/icons/svg/1246/1246351.svg")
User.create(first_name: "Paul", last_name: "Bramos", username: "pauljb", email: "paul@email.com", password: "password", image: "https://image.flaticon.com/icons/svg/1246/1246351.svg")
User.create(first_name: "Lauren", last_name: "Weber", username: "lweb88", email: "lauren@email.com", password: "password", image: "https://image.flaticon.com/icons/svg/1246/1246351.svg")
User.create(first_name: "Jane", last_name: "Halstead", username: "jweb04", email: "jweb@email.com", password: "password", image: "https://image.flaticon.com/icons/svg/1246/1246351.svg")
User.create(first_name: "Mark", last_name: "Weber", username: "mweb17", email: "mark@email.com", password: "password", image: "https://image.flaticon.com/icons/svg/1246/1246351.svg")

admin = User.first
paul = User.second
lauren = User.third
jane = User.fourth
mark = User.fifth

# Parks
Park.create(name: "Arches National Park", state: "Utah", description: "Visit Arches to discover a landscape of contrasting colors, land forms and textures unlike any other in the world. The park has over 2,000 natural stone arches, in addition to hundreds of soaring pinnacles, massive fins and giant balanced rocks. This red-rock wonderland will amaze you with its formations, refresh you with its trails, and inspire you with its sunsets.", weather: "Arches is part of the Colorado Plateau, a high desert region that experiences wide temperature fluctuations, sometimes over 40 degrees in a single day. The temperate (and most popular) seasons are spring (April-May) and fall (mid-September-October), when daytime highs average 60 to 80 F and lows average 30 to 50 F. Summer temperatures often exceed 100 F, making strenuous exercise difficult. Winters are cold, with highs averaging 30 to 50 F, and lows averaging 0 to 20 F.", longitude: -109.5863666, latitude: 38.72261844, image: "https://www.nps.gov/common/uploads/structured_data/3C7A0B2B-1DD8-B71B-0BE0E26B0740AA6B.jpg", creator_id: admin.id)
Park.create(name: "Big Bend National Park", state: "Texas", description: "There is a place in Far West Texas where night skies are dark as coal and rivers carve temple-like canyons in ancient limestone. Here, at the end of the road, hundreds of bird species take refuge in a solitary mountain range surrounded by weather-beaten desert. Tenacious cactus bloom in sublime southwestern sun, and diversity of species is the best in the country. This magical place is Big Bend...", weather: "Variable-- February through April the park abounds with pleasant and comfortable temperatures.-- May through August is hot and can also be stormy. Temperatures regularly reach well over 100 degrees in the lower elevations and along the Rio Grande.-- September through January temperatures are cooler; the weather can quickly turn cold at any time during these months.", longitude: -103.2297897, latitude: 29.29817767, image: "https://www.nps.gov/common/uploads/structured_data/3C84F209-1DD8-B71B-0B6AA2D4E9522573.jpg", creator_id: admin.id)
Park.create(name: "Crater Lake National Park", state: "Oregon", description: "Crater Lake inspires awe. Native Americans witnessed its formation 7,700 years ago, when a violent eruption triggered the collapse of a tall peak. Scientists marvel at its purity: fed by rain and snow, it’s the deepest lake in the USA and one of the most pristine on earth. Artists, photographers, and sightseers gaze in wonder at its blue water and stunning setting atop the Cascade Mountain Range.", weather: "Summers at Crater Lake are short but sunny. July, August, and September are your best bets for warm, dry weather. In May, June, and October, sunny days alternate with periods of rain and snow. Winters at Crater Lake are long and snowy. Storms from the Pacific Ocean dump an annual average of 43 feet (13 meters) of snow at Park Headquarters. The park's tremendous snowfall is a result of its position at the crest of the Cascade Mountains.", longitude: -122.1338414, latitude: 42.94065854, image: "https://www.nps.gov/common/uploads/structured_data/3C7B227E-1DD8-B71B-0BEECDD24771C381.jpg", creator_id: admin.id)
Park.create(name: "Denali National Park", state: "Alaska", description: "Centered on Denali, the tallest and highest prominence mountain in North America, Denali is serviced by a single road leading to Wonder Lake. Denali and other peaks of the Alaska Range are covered with long glaciers and boreal forest. Wildlife includes grizzly bears, Dall sheep, Porcupine caribou, and wolves.", weather: "When talking about weather, summer generally means late May through early September. Average summer temperatures range from 33 to 75 degrees Fahrenheit. While rare, it has been known to snow in any summer month, so be prepared for cold weather. Wearing layers of clothing makes it easy to regulate your body temperature. Also, you'll find that a good waterproof, hooded raincoat is invaluable. June through August are the rainiest months in Denali, although yearly variances sometimes lead to bone dry summers—Denali always keeps you guessing.", longitude: -151.1926, latitude: 63.1148, image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Every_Road-_Denali_%287945497984%29.jpg", creator_id: admin.id)
Park.create(name: "Everglades National Park", state: "Florida", description: "Everglades National Park protects an unparalleled landscape that provides important habitat for numerous rare and endangered species like the manatee,  American crocodile, and the elusive Florida panther. An international treasure as well -  a World Heritage Site, International Biosphere Reserve, a Wetland of International Importance, and a specially protected area under the Cartagena Treaty.", weather: "The climate in Florida is known to be mild and sunny.The average annual temperatures for South Florida and the Keys range from 74° to 77°F (23° to 25°C). There are two seasons at the Everglades National Park: the wet season and the dry season. The wet season runs from Mid-May to November and the dry season runs from December to mid-May.", longitude: -80.88200301, latitude: 25.37294225, image: "https://www.nps.gov/common/uploads/structured_data/3C854681-1DD8-B71B-0BA4F6D9379336DF.jpg", creator_id: admin.id)
Park.create(name: "Gates Of The Arctic National Park & Preserve", state: "Alaska", description: "This vast landscape does not contain any roads or trails. Visitors discover intact ecosystems where people have lived with the land for thousands of years. Wild rivers meander through glacier-carved valleys, caribou migrate along age-old trails, endless summer light fades into aurora-lit night skies of winter. It remains virtually unchanged except by the forces of nature.", weather: "The climate of Gates of the Arctic National Park & Preserve is generally classified as arctic and sub-arctic, with exceptionally cold winters, relatively mild summers, low annual precipitation, and generally high winds. The weather is influenced by many different systems, and can change rapidly.", longitude: -153.2917758, latitude: 67.75961636, image: "https://www.nps.gov/common/uploads/structured_data/3C7A89F4-1DD8-B71B-0B52204A2EBF61A4.jpg", creator_id: admin.id)
Park.create(name: "Gateway Arch National Park", state: "Missouri", description: "The Gateway Arch reflects St. Louis' role in the Westward Expansion of the United States during the nineteenth century. The park is a memorial to Thomas Jefferson's role in opening the West, to the pioneers who helped shape its history, and to Dred Scott who sued for his freedom in the Old Courthouse.", weather: "Summer is high season at Gateway Arch National Park. Come early, or come late (the crowds are light during the evening). Make a day of it -- plan a visit to another of the city's terrific attractions. During August and September, the crowds thin out as kids return to school. Fall is a busy time due to many group tours. The day after Thanksgiving is one of the busiest days so be sure to arrive early! Winter is a perfect time to visit! There are no lines for the trams, no waiting for movies, and the weather is surprisingly mild. Prolonged periods of extremely cold weather are rare, and in fact, records show that the temperature doesn't get lower than 32 degrees more than 25 days throughout the winter!", longitude: -90.1892508, latitude: 38.6258069, image: "https://upload.wikimedia.org/wikipedia/commons/d/de/St_Louis_night_expblend.jpg", creator_id: admin.id)
Park.create(name: "Glacier National Park", state: "Montana", description: "Come and experience Glacier's pristine forests, alpine meadows, rugged mountains, and spectacular lakes. With over 700 miles of trails, Glacier is a hiker's paradise for adventurous visitors seeking wilderness and solitude. Relive the days of old through historic chalets, lodges, and the famous Going-to-the-Sun Road. Explore Glacier National Park and discover what awaits you.", weather: "Glacier's weather is highly variable and can be extreme. Expect warm sunny summer days and in the winter the temperatures can fall well below freezing. Glacier's geography, straddling the Continental Divide, sets the stage for clashes of two very different climates. Warm, wet Pacific air moves in from the west, and cold dry Arctic air from the northeast. They meet at the Divide.", longitude: -113.8009306, latitude: 48.68414678, image: "https://www.nps.gov/common/uploads/structured_data/3C7FEF84-1DD8-B71B-0B26F3C536955733.jpg", creator_id: admin.id)
Park.create(name: "Grand Canyon National Park", state: "Arizona", description: "Grand Canyon National Park, in Arizona, is home to much of the immense Grand Canyon, with its layered bands of red rock revealing millions of years of geological history. Viewpoints include Mather Point, Yavapai Observation Station and architect Mary Colter’s Lookout Studio and her Desert View Watchtower. Lipan Point, with wide views of the canyon and Colorado River, is a popular, especially at sunrise and sunset.", weather: "With an elevation spanning from around 2000 feet to over 8000 feet (760-2440m), the Grand Canyon area experiences a variety of weather conditions. This weather variety includes cold winters and mild pleasant summers, moderate humidity, and considerable diurnal temperature changes at the higher elevations, with hot and drier summers at the bottom of the Grand Canyon along with cool damp winters. Summer thunderstorms and winter snowfall adds to the weather variety in this region.", longitude: -112.1401, latitude: 36.0544, image: "https://www.nps.gov/common/uploads/banner_image/imr/homepage/99556161-1DD8-B71B-0B896E4D786C6B47.jpg", creator_id: admin.id)
Park.create(name: "Grand Teton National Park", state: "Wyoming", description: "Grand Teton is the tallest mountain in the Teton Range. The park's historic Jackson Hole and reflective piedmont lakes teem with endemic wildlife, with a backdrop of craggy mountains that rise abruptly from the sage-covered valley.", weather: "According to the Köppen climate classification system, Grand Teton National Park has a Subarctic with Cool Summers and Year Around Rainfall Climate (DFC). The plant hardiness zone at Jenny Lake Visitor Center is 4a with an average annual extreme minimum temperature of -28.3 °F (-33.5 °C).", longitude: -110.6818, latitude: 43.7904, image: "https://images.squarespace-cdn.com/content/5738d60f37013b8eeb2fb914/1512678092533-826IVNU3O2IU4S753000/grand-teton-1728535_1920.jpg?content-type=image%2Fjpeg", creator_id: admin.id)
Park.create(name: "Great Sand Dunes National Park & Preserve", state: "Colorado", description: "Open all day and night year round, the tallest dunes in North America are the centerpiece in a diverse landscape of grasslands, wetlands, conifer and aspen forests, alpine lakes, and tundra. Experience a starry sky on moonless nights, or a surreal walk on the dunes under bright full moonlight.", weather: "Temperatures are relatively cool all year, thanks to the park and preserve's high elevation. Conditions are most often calm, but winds can arise, especially in spring and during storm fronts.  Daytime temperatures feel warmer here year round due to intense high-altitude sunlight, and a scorching mid-day summer sand surface. Plan to explore the dunes morning or evening during summer. Nights are cool in summer, and frigid in winter. Visit the Great Sand Dunes website for the most accurate weather forecasts.", longitude: -105.5919572, latitude: 37.79256812, image: "https://www.nps.gov/common/uploads/structured_data/3C7CFAF7-1DD8-B71B-0B737B524CCBACAB.jpg", creator_id: admin.id)
Park.create(name: "Guadalupe Mountains National Park", state: "Texas", description: "Guadalupe Mountains National Park protects the world's most extensive Permian fossil reef, the four highest peaks in Texas, an environmentally diverse collection of flora and fauna, and the stories of lives shaped through conflict, cooperation and survival. Come experience mountains and canyons, desert and dunes, night skies and spectacular vistas within a place unlike any other within the NPS.", weather: "Weather in the Guadalupe Mountains can change in an instant. In the Spring and Summer, average temperatures vary with highs between 70F-80F+ with evening lows in the 40F-60F range. The Fall and Winter bring milder temperatures with highs in between 50F-60F with evening lows in the 30F-50F range.", longitude: -104.885527, latitude: 31.92304462, image: "https://www.nps.gov/common/uploads/structured_data/3C825A11-1DD8-B71B-0BAAA0BDF174AA2F.jpg", creator_id: admin.id)
Park.create(name: "Indiana Dunes National Park", state: "Indiana", description: "Indiana Dunes National Park hugs 15 miles of the southern shore of Lake Michigan and has much to offer. Whether you enjoy scouting for rare species of birds or flying kites on the sandy beach, the national park's 15,000 acres will continually enchant you.  Hikers will enjoy 50 miles of trails over rugged dunes, mysterious wetlands, sunny prairies, meandering rivers and peaceful forests.", weather: "On average, the warmest month is July and the highest recorded temperature was 105F in 1934. The coolest month is January, with the lowest recorded temperature of -25F in 1985. June sees the most precipitation with an average rainfall of 4.66 Inches.", longitude: -87.09647445, latitude: 41.63765525, image: "https://www.nps.gov/common/uploads/structured_data/3C7E4819-1DD8-B71B-0B1F99B8AFB5C9AA.jpg", creator_id: admin.id)
Park.create(name: "Kenai Fjords National Park", state: "Alaska", description: "At the edge of the Kenai Peninsula lies a land where the ice age lingers. Nearly 40 glaciers flow from the Harding Icefield, Kenai Fjords' crowning feature. Wildlife thrives in icy waters and lush forests around this vast expanse of ice. Sugpiaq people relied on these resources to nurture a life entwined with the sea. Today, shrinking glaciers bear witness to the effects of our changing climate.", weather: "The weather  Kenai Fjords is difficult to predict and can change rapidly. The area generally enjoys a relatively temperate maritime climate, primarily due to the influence of the Japanese current that flows through the Gulf of Alaska. Summer daytime temperatures range from the mid 40s to the low 70s (Fahrenheit). Overcast and cool rainy days are frequent. Winter temperatures can range from the low 30s to -20.", longitude: -150.106502, latitude: 59.81804414, image: "https://www.nps.gov/common/uploads/structured_data/3C798EAB-1DD8-B71B-0BC4BEFB197F2C90.jpg", creator_id: admin.id)
Park.create(name: "Mammoth Cave National Park", state: "Kentucky", description: "Mammoth Cave National Park preserves not only the longest known cave system on earth (400+ miles), but also 53,000 acres of beautiful forest.  With nearly a dozen miles of cave trail below ground, and a surface boasting nearly 70 miles of nature trail, 13 backcountry campsites, three campgrounds, and over 20 miles of navigable river to explore and enjoy, it really is two worlds in one.", weather: "Kentucky has a moderate climate with warm, yet moist conditions. Summers average in the high 80s; winters average in the low 40s. Southern Kentucky, where Mammoth Cave is located, receives the highest average precipitation for the state, about 50 inches per year, mostly in spring. Winter can bring mild to moderate snow and ice. Storms happen year-round, and can include tornadoes and flooding in low-lying areas, but severe weather is infrequent. The temperature deep in the cave is a constant 54°F (12°C).", longitude: -86.13090198, latitude: 37.19760458, image: "https://www.nps.gov/common/uploads/structured_data/6FE16EEF-1DD8-B71B-0BA9538F9BF50B2F.jpg", creator_id: admin.id)
Park.create(name: "Mount Rainier National Park", state: "Washington", description: "Ascending to 14,410 feet above sea level, Mount Rainier stands as an icon in the Washington landscape. An active volcano, Mount Rainier is the most glaciated peak in the contiguous U.S.A., spawning five major rivers. Subalpine wildflower meadows ring the icy volcano while ancient forest cloaks Mount Rainier’s lower slopes. Wildlife abounds in the park’s ecosystems. A lifetime of discovery awaits.", weather: "Weather patterns at Mount Rainier are strongly influenced by the Pacific Ocean and elevation. The climate is generally cool and rainy, with summer highs in the 60s and 70s. While July and August are the sunniest months of the year, rain is very likely in spring, fall, and winter. Visitors should be aware that mountain weather is very changeable. In the higher elevations, like Paradise, winter can last from November to May with many feet of snow on the ground.", longitude: -121.7043885, latitude: 46.86075416, image: "https://www.nps.gov/common/uploads/structured_data/3C7C68E6-1DD8-B71B-0B42E9A3C7ECA52D.jpg", creator_id: admin.id)
Park.create(name: "North Cascades National Park", state: "Washington", description: "This complex includes two geographically distinct units of the national park, as well as Ross Lake and Lake Chelan National Recreation Areas. The highly glaciated mountains are spectacular examples of Cascade geology. Popular hiking and climbing areas include Cascade Pass, Mount Shuksan, Mount Triumph, and Eldorado Peak.", weather: "The best weather for visiting the North Cascades generally occurs between mid-June and late-September. Snow is off all but the highest trails by July. Autumn and Spring are becoming more popular for visits since car tours of the Skagit, Okanogan and Stehekin Valleys are enticing for color and wildlife during the less busy shoulder seasons. Day hikes are excellent and give a great taste of the wilderness, whenever the weather is good. Storms are common: always be prepared for a few days of rain and wind. Warm, waterproof clothing and a tent are necessary for spring, fall and winter trips into the backcountry. Heavy snow and rain, at high elevations, characterize the North Cascades every winter. Avalanches are common in winter and spring in these steep mountains and even in places along the North Cascades Highway.", longitude: -121.2985, latitude: 48.7718, image: "https://www.audubon.org/sites/default/files/styles/hero_image/public/north-cascades.jpg?itok=MnBjb_2X", creator_id: admin.id)
Park.create(name: "Olympic National Park", state: "Washington", description: "Olympic National Park is on Washington's Olympic Peninsula in the Pacific Northwest. The park sprawls across several different ecosystems, from the dramatic peaks of the Olympic Mountains to old-growth forests. The summit of glacier-clad Mt. Olympus is popular with climbers, and hiking and backpacking trails cut through the park's rainforests and along its Pacific coastline.", weather: "Weather in Olympic is variable and unpredictable, no matter the time of year. It is common for different weather conditions to exist within the park at the same time. Even in the summer, temperatures may vary from 10-20 degrees, especially along the coast and higher elevations. Always check the current weather forecast.", longitude: -123.6044, latitude: 47.8021, image: "https://www.audubon.org/sites/default/files/styles/hero_image/public/olympic.jpg?itok=h-g9jAl0", creator_id: admin.id)
Park.create(name: "Petrified Forest National Park", state: "Arizona", description: "Did you know that Petrified Forest is more spectacular than ever? While the park has all the wonders known for a century, there are many new adventures and discoveries to share. There are backcountry hikes into areas never open before such as Red Basin and little known areas like the Martha's Butte. There are new exhibits that bring the stories to life. Come rediscover Petrified Forest!", weather: "Petrified Forest National Park is a semi-arid grassland. Temperatures range from above 100° F (38° C) to well below freezing. About 10 inches (25.4 cm) of moisture comes during infrequent snow in the winter and often dramatic summer thunder-storms. Animals and plants are adapted to extremes in temperature and moisture. You should be ready too. Check out the forecast before you arrive and plan accordingly.", longitude: -109.7877678, latitude: 34.98387664, image: "https://www.nps.gov/common/uploads/structured_data/3C7D8213-1DD8-B71B-0BE4A3B9394FD89A.jpg", creator_id: admin.id)
Park.create(name: "Redwood National Park", state: "California", description: "Most people know Redwood as home to the tallest trees on Earth. The parks also protect vast prairies, oak woodlands, wild river-ways, and nearly 40-miles of rugged coastline.  For thousands of years people have lived in this verdant landscape.  Together, the National Park Service and California State Parks are managing and restoring these lands for the inspiration, enjoyment, and education of all.", weather: "Visitors should be prepared for cooler and damp weather. Dress in layers and expect to get wet. Year-round temperatures along California's redwood coast: mid-40s°F (7°C) to mid-60s°F (18°C). \n\nSummer can be foggy, with highs occasionally reaching low 70s°F (20°C). Winters are cooler with considerable rain. October through April averages 60-80 inches of rain over the region.", longitude: -124.0318129, latitude: 41.37237268, image: "https://www.nps.gov/common/uploads/structured_data/CD69DD56-E050-4F4E-DDF622317D38250E.jpg", creator_id: admin.id)
Park.create(name: "Rocky Mountain National Park", state: "Colorado", description: "Bisected north to south by the Continental Divide, this portion of the Rockies has ecosystems varying from over 150 riparian lakes to montane and subalpine forests to treeless alpine tundra. Wildlife including mule deer, bighorn sheep, black bears, and cougars inhabit its igneous mountains and glacial valleys. Longs Peak, a classic Colorado fourteener, and the scenic Bear Lake are popular destinations, as well as the historic Trail Ridge Road, which reaches an elevation of more than 12,000 feet (3,700 m).", weather: "According to the Köppen climate classification system, Rocky Mountain National Park has a Subarctic climate with cool summers and year around precipitation (Dfc). According to the United States Department of Agriculture, the Plant Hardiness zone at Bear Lake Ranger Station (9492 ft / 2893 m) is 5a with an average annual extreme minimum temperature of -15.2 °F (-26.2 °C), and 5a with an average annual extreme minimum temperature of -16.1 °F (-26.7 °C) at Beaver Meadows Visitor Center (7825 ft / 2385 m)", longitude: 105.6836, latitude: 40.3428, image: "https://ewscripps.brightspotcdn.com/dims4/default/bf1fd34/2147483647/strip/true/crop/640x360+0+33/resize/1280x720!/quality/90/?url=https%3A%2F%2Fmediaassets.thedenverchannel.com%2Fphoto%2F2012%2F10%2F09%2FRMNP-Dream-Lake-At-Sunrise-28963628_280930_ver1.0_640_480.jpg", creator_id: admin.id)
Park.create(name: "Sequoia National Park", state: "California", description: "Sequoia National Park is adjacent to Kings Canyon National Park in California's southern Sierra Nevada mountains. It's known for its huge sequoia trees, notably the General Sherman Tree dominating the Giant Forest. The underground Crystal Cave features streams and striking rock formations. Moro Rock is a granite dome offering sweeping park views. Nearby is the Tunnel Tree, a toppled tree cut to accommodate the road.", weather: "Weather can be very different between different park areas, and it can change quickly. Temperatures can vary 20 to 30 degrees as you change elevation. There may be spring flowers in the foothills and snow in the Giant Forest at the same time.", longitude: 118.5658, latitude: 36.4864, image: "https://www.visitsequoia.com/~/media/parks/sequoia/explore/explore-page-banner-desktop.jpg?mw=1500&hash=A97D09BB06FF3D0B54E0BDC52441005FF389C973", creator_id: admin.id)
Park.create(name: "Yellowstone National Park", state: "Wyoming", description: "Situated on the Yellowstone Caldera, the park has an expansive network of geothermal areas including boiling mud pots, vividly colored hot springs such as Grand Prismatic Spring, and regularly erupting geysers, the best-known being Old Faithful. The yellow-hued Grand Canyon of the Yellowstone River contains several high waterfalls, and four mountain ranges traverse the park. More than 60 mammal species including timber wolves, grizzly bears, black bears, lynxes, bison, and elk, make this park one of the best wildlife viewing spots in the country.", weather: "Since most of the park lies at an elevation of 6,000 feet (1829 m) above sea level or higher, unpredictability characterizes Yellowstone's weather. Expect big temperature swings, rain, or snow during every month of the year. No matter when you visit, bring a warm jacket, rain gear, and lots of layers.", longitude: 110.5885, latitude: 44.4280, image: "https://gypsyguide.com/wp-content/uploads/2017/09/Yellowstone-and-Grand-Teton-National-Park-Tours.jpg", creator_id: admin.id)
Park.create(name: "Yosemite National Park", state: "California", description: "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, with prints of the photographer’s renowned black-and-white landscapes of the area.", weather: "Yosemite National Park covers nearly 1,200 square miles (3,100 square km) in the Sierra Nevada, with elevations ranging from about 2,000 feet (600 m) to 13,000 ft (4,000 m). Yosemite receives 95% of its precipitation between October and May (and over 75% between November and March). Most of Yosemite is blanketed in snow from about November through May. (Yosemite Valley can be rainy or snowy in any given winter storm.)", longitude: -119.5383, latitude: 37.8651, image: "https://gypsyguide.com/wp-content/uploads/2017/09/Yosemite-National-Park.jpg", creator_id: admin.id)
Park.create(name: "Zion National Park", state: "Utah", description: "Located at the junction of the Colorado Plateau, Great Basin, and Mojave Desert, this park contains sandstone features such as mesas, rock towers, and canyons, including the Virgin River Narrows. The various sandstone formations and the forks of the Virgin River create a wilderness divided into four ecosystems: desert, riparian, woodland, and coniferous forest.", weather: "Zion National Park has a BWk (Köppen climate classification) cold desert type of climate consisting of hot summers and cold winters with a limited amount of precipitation throughout the year.", longitude: -113.0263, latitude: 37.2982, image: "https://www.doi.gov/sites/doi.gov/files/uploads/ZionNPTomMorrisSmall.jpg", creator_id: admin.id)
Park.create(name: "Devil's Lake State Park", state: "Wisconsin", description: "Devil's Lake State Park is a state park located in the Baraboo Range in eastern Sauk County, just south of Baraboo, Wisconsin. Devil's Lake State Park is the largest state park in Wisconsin.", weather: "The bluffs of Devil’s Lake State Park can create some interesting air currents. At the southern corner of the East Bluff, it’s common for cool air from the north end to meet warmer air coming in from the east to create some nice thermals for our vultures and a bit of chop on the lake.", longitude: -89.7314, latitude: 43.4284, image: "https://3.bp.blogspot.com/-FFw78Bxq8fk/WABq_indxmI/AAAAAAAAGuA/rvEKmym4-OYxxSFnOZ_G2tx3-m724WMAACLcB/s1600/Ice-Age-Trail-Devils-lake-segment-001.jpg", creator_id: admin.id)
Park.create(name: "Starved Rock State Park", state: "Illinois", description: "Starved Rock State Park is a wilderness area on the Illinois River in the U.S. state of Illinois. It’s known for its steep sandstone canyons formed by glacial meltwater. Several, including the St. Louis, French and Wildcat canyons, have waterfalls. A wooded trail leads to Lover’s Leap Overlook, with views of the river and Starved Rock Dam. Park wildlife includes white-tailed deer, bald eagles and migratory birds.", weather: "Northern Illinois has a humid continental climate, featuring mild summers and cold winters capable of producing snow storms.[citation needed] The highest recorded temperature at the park was 112 °F (44 °C) in 1936, and the record low was −25 °F (−32 °C) in 1985.[41] January is the coldest month at the park, July the warmest, and June the wettest.[41] Starved Rock State Park averages 35.7 inches (910 mm) of precipitation.", longitude: -89.0002, latitude: 41.3212, image: "https://www.starvedrocklodge.com/wp-content/uploads/2019/08/starved-rock-state-park-waterfalls.jpg", creator_id: admin.id)

# Park.create(name: "Clifty Falls State Park", state: "Indiana", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Custer State Park", state: "South Dakota", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Ecola State Park", state: "Oregon", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Falls Creek State Park", state: "Tennessee", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Johnson's Shut-Ins State Park", state: "Missouri", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Letchworth State Park", state: "New York", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "McCormick's Creek State Park", state: "Indiana", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Mark Twain Nationa Forest", state: "Missouri", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Porcupine Mountains State Park", state: "Michigan", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Sleeping Bear Dunes State Park", state: "Michigan", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Tallulah Gorge State Park", state: "Georgia", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Turkey Run State Park", state: "Indiana", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "Valley of Fire State Park", state: "Nevada", description: "", weather: "", longitude: , latitude: , image: "", creator_id: admin.id)
# Park.create(name: "", state: "", description: "", weather: "", longitude: , latitude: , image: "", user: admin)
# Park.create(name: "", state: "", description: "", weather: "", longitude: , latitude: , image: "", user: admin)
# Park.create(name: "", state: "", description: "", weather: "", longitude: , latitude: , image: "", user: admin)
# Park.create(name: "", state: "", description: "", weather: "", longitude: , latitude: , image: "", user: admin)

arches = Park.first
crater = Park.third
starvedrock = Park.last

# Tags

Tag.create(name: "challenging hikes")
Tag.create(name: "wildlife")
Tag.create(name: "wildflowers")
Tag.create(name: "backpacking")
Tag.create(name: "warm in the winter")
Tag.create(name: "beautiful vistas")
Tag.create(name: "waterfalls")
Tag.create(name: "forest")
Tag.create(name: "crowded")
Tag.create(name: "great trails")
Tag.create(name: "muddy")
Tag.create(name: "icy")
Tag.create(name: "great campgrounds")

# Reviews

Review.create(content: "Stunning views throughout. Bring layers and enough water and snacks. Prepare for a lot of people later in afternoon. Weather permitting climb to Glacier lookout.", visit_date: "2020-3-17", rating: 5, user: paul, park: arches)
Review.create(content: "Loved the rock formations! Weather the perfect.", visit_date: "2019-9-23", rating: 5, user: lauren, park: arches)
Review.create(content: "Nice lake. Not too crowded. Got a little bored though.", visit_date: "2019-7-19", rating: 4, user: jane, park: crater)
Review.create(content: "Definitely worth the treachorous drive on the Going-to-the-Sun road!", visit_date: "2018-6-5", rating: 5, user: mark, park: crater)
Review.create(content: "Mesmerizing views. Loved every minute of my hikes!", visit_date: "2020-3-17", rating: 5, user: paul, park: starvedrock)
Review.create(content: "Who would have thought there were sand dunes in Northwest Indiana?", visit_date: "2019-8-19", rating: 4, user: lauren, park: starvedrock)
Review.create(content: "Beautiful, majestic mountain. Very glad I got to visit, but it was extremely crowded.", visit_date: "2019-5-4", rating: 4, user: jane, park: arches)
Review.create(content: "Nice easy hike - trail was clear, and even though the parking lot was full, encountered only a handful of people. Very relaxing.", visit_date: "2019-6-20", rating: 5, user: mark, park: arches)
Review.create(content: "This hike is scenic through and through. ", visit_date: "2019-4-20", rating: 5, user: paul, park: crater)
Review.create(content: "The hike was great, but there were waaaay too many people at the rim. Luckily it was pretty desolate once you got in the canyon.", visit_date: "2019-10-15", rating: 4, user: lauren, park: crater)
Review.create(content: "Great hike, not too difficult but definitely not for the faint hearted. The starting switchbacks will get your heart rate up but as others have said the trail is in good condition.", visit_date: "2019-9-17", rating: 5, user: jane, park: starvedrock)