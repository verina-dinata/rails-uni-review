# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database"

Review.destroy_all
University.destroy_all
User.destroy_all

puts "Creating Universities"

universities = {
  'The University of Melbourne' => {
    description: 'The University of Melbourne is a public research university in Melbourne, Australia.  Having been established in 1853, it is the second oldest university in Australia and the oldest in the state of Victoria.  The main campus is located in the Melbourne suburb of Parkville with several other campuses located across Victoria. These include the campuses at Southbank, Burnley, Creswick, Dookie, Shepparton, Werribee.  The university is divided into 10 faculties including architecture, building and planning; arts; business and economics; education; engineering; fine arts and music; law; medicine, dentistry and health sciences; science and veterinary and agricultural sciences.Notable alumni include the former prime minister of Australia Julia Gillard, author and academic Germaine Greer, comedian Ronny Chieng and chef, restaurateur and food writer Stephanie Alexander. Seven Nobel Laureates have also taught in the institution.',
    address: 'Grattan Street, Parkville, Victoria, VIC 3010, Australia',
    city: 'Melbourne',
    country: 'Australia',
    url: 'https://www.unimelb.edu.au',
    ranking: 33,
    'domestic course fee' => '27k AUD',
    'international course fee' => '130k AUD',
    'application deadline' => Date.parse('20231031'),
    'student count' => 48_088,
    dorm: true
  },
  'Australian National University' => {
    description: 'The Australian National University (ANU) was founded in 1946 and is located in Canberra, the capital city of Australia. It’s the only university in the country which was created by the Parliament of Australia.  ANU was reorganised in 2006 to create seven separate colleges, including: arts and social sciences, business and economics, engineering and computer science, law, medicine, biology and environment, and physical and mathematical sciences.  ANU allows students to customise their studies, and study two subjects as part of their degree to multiply qualifications and increase employability after university.  The main campus of ANU extends across the suburb of Acton, which consists of 358 acres of mostly parkland with university buildings landscaped within. With over 10,000 trees on its campus, ANU is known as a sustainable campus. ANU offers a wide range of catered and self-catered student residences and a vibrant campus community within easy walking or cycling distance to the city.  There are four other campuses including Kioloa Coastal Campus in New South Wales, Mount Stromlo Observatory 18km southwest of Canberra city in the Australian Capital Territory (ACT), North Australia Research Unit campus approximately 15km drive from Darwin city and Siding Spring Observatory also in New South Wales.  ANU offers plenty of clubs for students to join as well as various volunteering opportunities.  ANU has also established relationships with over 170 universities around the world, carrying out academic exchanges, scientific research cooperation and the opportunity for students to study abroad.  Universities on offer include University of Edinburgh (UK), University of California (US) and University of Auckland (New Zealand).',
    address: 'Acton, Australian Capital Territory, ACT 2601, Australia',
    city: 'Acton',
    country: 'Australia',
    url: 'https://www.anu.edu.au/',
    ranking: 30,
    'domestic course fee' => '31k AUD',
    'international course fee' => '150k AUD',
    'application deadline' => Date.parse('20230515'),
    'student count' => 25500,
    dorm: false
  },
  'The University of Queensland' => {
    description: 'Since it was founded in Brisbane in 1909, The University of Queensland (UQ) has provided exceptional study experiences, research excellence and collaborative partnerships, coupled with an unforgettable lifestyle and stunning climate, to deliver knowledge leadership for a better world.  With 3 campuses and more than 40 teaching and research sites, UQ is the perfect place to teach, research and study. Take advantage of the extensive UQ features including the largest research library in Queensland, hundreds of quality study spaces, several museums, a theatre, 11 college residences, and magnificent sporting facilities, such as swimming pools, tennis, basketball and volleyball courts, sports fields, Olympic-standard running tracks, and gymnasiums.  Our high-quality range of around 390 undergraduate and postgraduate programs is one of the most comprehensive in Australia, providing students with the latest and most advanced disciplinary knowledge and industry placements informed by UQ’s world-leading research. UQ’s 6 faculties, 8 globally recognised research institutes and 100+ research centres attract an interdisciplinary community of more than 2,000 scientists, social scientists and engineers, who continue UQ’s tradition of research leadership.  As you enjoy Queensland’s stunning campuses and climate, you can also make the most of the University’s proximity to many natural wonders – including beautiful beaches, lush rainforests, outback deserts, the Great Barrier Reef, as well as the largest sand island in the world – and visit stunning tourist attractions within an hour’s drive, such as the Gold and Sunshine Coasts, Byron Bay, Lone Pine Koala Sanctuary, and the world-famous ‘Australia Zoo’. Within Australia, Brisbane is renowned as a friendly and affordable city, with plenty of dining and entertainment attractions, and was ranked by The Economist Intelligence Unit’s 2019 Global Liveability Index as the world’s 18th most liveable city, achieving a perfect score for education and healthcare.',
    address: 'Brisbane St Lucia, Brisbane, Queensland, QLD 4072, Australia',
    city: 'Brisbane',
    country: 'Australia',
    url: 'https://www.uq.edu.au/',
    ranking: 50,
    'domestic course fee' => '32k AUD',
    'international course fee' => '120k AUD',
    'application deadline' => Date.parse('20231130'),
    'student count' => 42871,
    dorm: true
  },
  'University of Sydney' => {
    description: 'The University of Sydney is one of the world’s leading, comprehensive research and teaching universities. We offer an exceptional range of disciplines – more than 400 areas of study – and our community includes more than 70,000 students, 8000 permanent and fixed-term staff and 350,000 alumni in more than 170 countries.  Leadership has always been at the core of our values. We were one of the first universities in the world to admit students solely on academic merit, and to open our doors to women on the same basis as men. Our aim is to make lives better not just by producing leaders of society, but through equipping our people with the qualities that allow them to serve all of our communities at every level.  In creating the first university in Australia in 1850, our founders recognised the power of education to inspire positive change. We hold that belief just as strongly today.',
    address: 'Sydney, New South Wales, 2006, Australia',
    city: 'Sydney',
    country: 'Australia',
    url: 'https://sydney.edu.au/',
    ranking: 41,
    'domestic course fee' => '36k AUD',
    'international course fee' => '192k AUD',
    'application deadline' => Date.parse('20230221'),
    'student count' => 73_000,
    dorm: true
  },
  'University of Newcastle' => {
    description: 'Guided by our values of excellence, equity, sustainability and engagement, the University of Newcastle has built a strong reputation as a world-leading university making an impact within our own regions, in Australia and across the globe. We’re ranked number one in the world for Partnering for a Sustainable Future (Times Higher Education Impact Rankings 2021).  Across our campuses in Newcastle, the Central Coast, Sydney and Singapore, the University of Newcastle enrols more than 37,000 students from diverse backgrounds, with a focus on equity and developing our next generation of socially-oriented leaders, entrepreneurs and innovators.    Our University has long been known as a champion of innovative approaches to teaching and learning. Many of our courses are designed to integrate theory with practice, offering rich opportunities for real-life, hands-on experiences.     We are a research-intensive university and proud of the great things we have achieved in collaboration with our partners in industry, business, government and the community here and around the world. Our sights are set firmly on the future, as we work hard to build our research capacity and maintain our position as a competitive destination for the world`s best researchers and global innovation leaders.',
    address: 'University Drive, Callaghan, New South Wales, NSW 2308, Australia',
    city: 'Newcastle',
    country: 'Australia',
    url: 'https://www.newcastle.edu.au/',
    ranking: 192,
    'domestic course fee' => '51k AUD',
    'international course fee' => '70k AUD',
    'application deadline' => Date.parse('20230919'),
    'student count' => 11455,
    dorm: true
  },
  'The University of Western Australia' => {
    description: 'The University of Western Australia (UWA) is one of Australia’s “sandstone universities”: universities dating back a century or more. UWA is the youngest of the sandstones, having been founded in 1911. It was the first university in the state of Western Australia.  UWA is also known as one of the Group of Eight leading research universities in Australia. Its teaching in life and agricultural sciences, psychology, education and earth and marine sciences is particularly well-known.  The university has nine divisions: Architecture, Landscape and Visual Arts, Arts, Business, Education, Engineering, Computing and Mathematics, Law, Medicine, Dentistry and Health Sciences, Indigenous Studies and Science',
    address: '35 Stirling Highway, Crawley, Perth, Western Australia, WA 6009, Australia',
    city: 'Perth',
    country: 'Australia',
    url: 'https://www.uwa.edu.au/',
    ranking: 90,
    'domestic course fee' => '32k AUD',
    'international course fee' => '120k AUD',
    'application deadline' => Date.parse('20231210'),
    'student count' => 25000,
    dorm: true
  },
  'The University of Adelaide' => {
    description: 'The University of Adelaide is a world-class research and teaching institution. We are centred on discovering new knowledge, pursuing innovation and preparing educated leaders of tomorrow.  As Australia’s third oldest university, we have a well-established reputation for excellence and progressive thinking. This continues today, with the University proudly ranked in the top one percent, among the world’s elite. Locally we are recognised as a vital contributor to the health, wealth and cultural life of the South Australian community.',
    address: 'Adelaide, South Australia, 5005 Australia',
    city: 'Adelaide',
    country: 'Australia',
    url: 'https://www.adelaide.edu.au',
    ranking: 109,
    'domestic course fee' => '36k AUD',
    'international course fee' => '132k AUD',
    'application deadline' => Date.parse('20231104'),
    'student count' => 20771,
    dorm: true
  },
  'Universiti Malaya' => {
    description: 'The highest-ranking Malaysian institution is Universiti Malaya (UM), a public research university based in Malaysia’s federal capital and largest city, Kuala Lumpur (which features in the QS Best Student Cities). Malaysia’s oldest university, Universiti Malaya was established in 1949, based on a merger of several existing colleges in neighboring Singapore. It offers courses across the full subject spectrum, with an enrollment of more than 14,580 undergraduate students and more than 13,700 postgraduates.',
    address: '50603, Jln Profesor Diraja Ungku Aziz, Seksyen 13, 50603 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia',
    city: 'Kuala Lumpur',
    country: 'Malaysia',
    url: 'https://www.um.edu.my',
    ranking: 70,
    'domestic course fee' => '42k RM',
    'international course fee' => '300k RM',
    'application deadline' => Date.parse('20230831'),
    'student count' => 17192,
    dorm: true
  },
  'Universiti Kebangsaan Malaysia' => {
    description: 'Second among the top universities in Malaysia is the Universiti Kebangsaan Malaysia (UKM), also known as the National University of Malaysia (NUM). Like most of the top universities in Malaysia, Universiti Kebangsaan Malaysia is publicly funded, with a fairly large intake of students at both undergraduate and graduate levels, teaching a comprehensive range of subjects alongside a strong research focus. It has its main campus in Bangi, a small town in the Selangor region to the south of Kuala Lumpur.',
    address: '43600 Bangi, Selangor, Malaysia',
    city: 'Bangi',
    country: 'Malaysia',
    url: 'https://www.ukm.my',
    ranking: 129,
    'domestic course fee' => '32k RM',
    'international course fee' => '80k RM',
    'application deadline' => Date.parse('20231001'),
    'student count' => 26808,
    dorm: true
  },
  'Universiti Putra Malaysia ' => {
    description: 'Universiti Putra Malaysia (UPM) formerly known as Universiti Pertanian Malaysia was founded in 1971 through the merger of Faculty of Agriculture, University Malaya and Agriculture College in Serdang',
    address: 'Jalan Universiti 1, 43400 Serdang, Selangor, Malaysia',
    city: 'Serdang',
    country: 'Malaysia',
    url: 'https://upm.edu.my/',
    ranking: 123,
    'domestic course fee' => '30k RM',
    'international course fee' => '65k RM',
    'application deadline' => Date.parse('20230523'),
    'student count' => 25628,
    dorm: true
  },
  'Universiti Sains Malaysia' => {
    description: 'The APEX (Accelerated PGelugorrogramme for Excellence) agenda among others is to propel the university to be one of the best institutions of higher learning in the world. USM is also the premium Research Intensive University in the country and has adopted an innovative approach to higher education, departing from the traditional faculty system to the broad-based school system. A university that champions sustainability issues, USM has 26 schools, offering undergraduate and postgraduate education and research based studies to both local and international students.',
    address: '11800 Gelugor, Penang, Malaysia',
    city: 'Gelugor',
    country: 'Malaysia',
    url: 'http://www.usm.my/',
    ranking: 143,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => Date.parse('20230630'),
    'student count' => 24375,
    dorm: true
  },
  'Universiti Teknologi Petronas' => {
    description: 'Universiti Teknologi PETRONAS (UTP) was established on 10 January 1997 and is a leading private university in Malaysia. The campus is built on a 400 hectare (1,000 acres) site strategically located at Bandar Seri Iskandar, Perak Darul Ridzuan, Malaysia. The university is a wholly-owned subsidiary of Petroliam Nasional Berhad (PETRONAS), the national oil and gas company of Malaysia.',
    address: 'Persiaran UTP, 32610 Seri Iskandar, Perak, Malaysia',
    city: 'Seri Iskandar',
    country: 'Malaysia',
    url: 'https://www.utp.edu.my/',
    ranking: 361,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => Date.parse('20230228'),
    'student count' => 8400,
    dorm: true
  },
  'Universiti Utara Malaysia' => {
    description: 'The Universiti Utara Malaysia (UUM) campus is situated in Sintok, 48 km to the north of Alor Star and 10 km to the east of Changlun, a small town situated along the North-South Highway. The 1,061 hectare campus, which was originally a tin mining area, is surrounded by beautiful scenery, lush tropical forests and mountains. In addition, two rivers flow inside the campus, the Sintok and Badak rivers, creating a most pleasant and serene environment.',
    address: 'Sintok, 06010 Bukit Kayu Hitam, Kedah, Malaysia',
    city: 'Sintok',
    country: 'Malaysia',
    url: 'https://www.uum.edu.my',
    ranking: 481,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => Date.parse('20230530'),
    'student count' => 20000,
    dorm: true
  },
  'Sunway University' => {
    description: 'Sunway University, one of Malaysia’s leading private universities which is a strictly not-for-profit institution and dedicated to quality education, supporting enterprise, and undertaking research focused on key global problems. The University is based in Sunway City, a thriving green resort city built on reclaimed former tin-mining land, on the western side of Kuala Lumpur in the heart of the Klang Valley. The University is relatively young by global standards, but is already ranked within the top 2% of universities in the world',
    address: '5, Jalan Universiti, Bandar Sunway, 47500 Petaling Jaya, Selangor, Malaysia',
    city: 'Petaling Jaya',
    country: 'Malaysia',
    url: 'https://university.sunway.edu.my/',
    ranking: 630,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => 'Rolling Admission',
    'student count' => 8000,
    dorm: true
  },
  'Taylors University' => {
    description: 'Taylor`s University is the No. 1 private university in Malaysia and Southeast Asia, ranked #332 in the QS World University Rankings 2022. This ranking places the university among the top 1.1% of the most influential institutions globally.',
    city: 'Subang Jaya',
    country: 'Malaysia',
    url: 'https://university.taylors.edu.my/',
    ranking: 284,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => 'Rolling Admission',
    'student count' => 15000,
    dorm: true
  },
  'Management and Science University' => {
    description: 'Management & Science University (MSU) is one of Malaysia`s top universities with a focus on developing and delivering quality human capital in national and global critical- need areas; among these are Medicine, Health Sciences, Pharmacy, Information Sciences, and Engineering, besides Business Management & Professional Studies, Education & Social Sciences, Hospitality & Culinary, and Music & Fashion.   The moment you step into the MSU campus, you will experience the dynamic cultural diversity that is felt all around. Our students bring life into the overall vibrancy on site, with their combination of personalities and lifestyles. Their different racial or academic backgrounds and experiences, add unique features of the university, where individual growth and communication are leveraged.',
    address: 'University Drive, Off Persiaran Olahraga, 40100 Shah Alam, Selangor, Malaysia',
    city: 'Shah Alam',
    country: 'Malaysia',
    url: 'https://www.msu.edu.my/',
    ranking: 640,
    'domestic course fee' => '',
    'international course fee' => '',
    'application deadline' => Date.parse('20230108'),
    'student count' => 15000,
    dorm: true
  },
  'National University of Singapore' => {
    description: 'A leading global university centred in Asia, the National University of Singapore (NUS) is Singapore’s flagship university, which offers a global approach to education and research, with a focus on Asian perspectives and expertiseNUS has 17 faculties and schools across three campuses. Its transformative education includes a broad-based curriculum underscored by multi-disciplinary courses and cross-faculty enrichment. Over 38,000 students from 100 countries enrich the community with their diverse social and cultural perspectives. NUS also strives to create a supportive and innovative environment to promote creative enterprise within its community.',
    address: '21 Lower Kent Ridge Rd, Singapore 119077',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.nus.edu.sg/',
    ranking: 11,
    'domestic course fee' => '45k SGD',
    'international course fee' => '80k SGD',
    'application deadline' => Date.parse('20230319'),
    'student count' => 38596,
    dorm: true
  },
  'Singapore University of Social Sciences' => {
    description: 'SUSS is a university with a rich heritage in inspiring lifelong education, and transforming society through applied social sciences. We develop students and alumni to be work-ready and work-adaptive, aspiring to reach their full potential, through our 3H`s education philosophy – "Head" for professional competency with applied knowledge, "Heart" for social awareness to meet the needs of the society, and "Habit" for passion towards lifelong learning.',
    address: '463 Clementi Rd, Singapore 599494',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.suss.edu.sg/',
    ranking: 330,
    'domestic course fee' => '30k SGD',
    'international course fee' => '130k SGD',
    'application deadline' => Date.parse('20230930'),
    'student count' => 14000,
    dorm: false
  },
  'Nanyang Technological University' => {
    description: 'The university has asked for tour groups and other visits to the campus be suspended until further notice. All international arrivals at the university must follow the self-quarantine guidelines that apply to all of Singapore. Young and research-intensive, Nanyang Technological University, Singapore (NTU Singapore) is placed 11th globally, and 1st among the world’s best young universities for five consecutive years (QS university rankings). Home to 33,000 students, NTU offers engineering, science, business, humanities, arts, social sciences, and education, and has a joint medical school with Imperial College London. Ranked the top university in the world for citations in artificial intelligence (Nikkei and Elsevier 2017) for the period 2012-2016, NTU is embracing digital technologies for better learning and living as part of its Smart Campus vision. It has partnerships with the world’s leading technology companies such as Alibaba, Rolls-Royce, BMW, Volvo, Delta Electronics, and Singtel in many areas of societal importance and impact that include artificial intelligence, data science, robotics, smart transportation, computing, personalised medicine, healthcare and clean energy. The NTU Smart Campus is not only a living testbed of tomorrow’s technologies, but it is also frequently listed among the world’s Top 15 most beautiful university campuses. It has 57 Green Mark-certified (equivalent to LEED-certified) building projects comprising more than 230 buildings, of which 95% are certified Green Mark Platinum. Apart from its main campus, NTU also has a medical campus in Novena, Singapore’s healthcare district.',
    address: '50 Nanyang Ave, Singapore 639798',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.ntu.edu.sg/',
    ranking: 19,
    'domestic course fee' => '40k SGD',
    'international course fee' => '150k SGD',
    'application deadline' => Date.parse('20230319'),
    'student count' => 32699,
    dorm: true
  },
  'Singapore Management University' => {
    description: 'A premier university in Asia, the Singapore Management University (SMU) is internationally recognised for its world-class research and distinguished teaching. Established in 2000, SMU’s mission is to generate leading-edge research with global impact and to produce broad-based, creative and entrepreneurial leaders for the knowledge-based economy. SMU’s education is known for its highly interactive, collaborative and project-based approach to learning. Home to over 10,000 students across undergraduate, postgraduate professional and post-graduate research programmes, SMU, is comprised of six schools: School of Accountancy, Lee Kong Chian School of Business, School of Economics, School of Information Systems, School of Law, and School of Social Sciences. SMU offers a wide range of bachelors, masters and PhD degree programmes in the disciplinary areas associated with the six schools, as well as in multidisciplinary combinations of these areas. SMU emphasises rigorous, high-impact, multi- and interdisciplinary research that addresses Asian issues of global relevance.  SMU faculty members collaborate with leading international researchers and universities around the world, as well as with partners in the business community and public sector. SMU’s city campus is a modern facility located in the heart of downtown Singapore, fostering strategic linkages with business, government and the wider community.',
    address: '81 Victoria St, Singapore 188065',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.smu.edu.sg/',
    ranking: 565,
    'domestic course fee' => '50k SGD',
    'international course fee' => '180k SGD',
    'application deadline' => Date.parse('20230215'),
    'student count' => 9280,
    dorm: true
  },
  'Singapore University of Technology and Design' => {
    description: 'SUTD is set up in collaboration with MIT, USA, to advance knowledge and nurture future leaders and innovators to serve societal needs. This will be accomplished, with a focus on Design, through an integrated multi-disciplinary curriculum and research. The Singapore University of Technology and Design will provide something different from the existing institutions – a very high quality education, not just an academic education, but one which is going to stimulate students to go beyond the book knowledge, to apply it to solving problems.',
    address: '8 Somapah Rd, Singapore 487372',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.sutd.edu.sg/',
    ranking: 173,
    'domestic course fee' => '92k SGD',
    'international course fee' => '117k SGD',
    'application deadline' => Date.parse('20230930'),
    'student count' => 386,
    dorm: true
  }
}

universities.each do |university, detail|
  name = university
  description = detail[:description]
  address = detail[:address]
  city = detail[:city]
  country = detail[:country]
  url = detail[:url]
  ranking = detail[:ranking]
  domestic_course_fee = detail['domestic course fee']
  international_course_fee = detail['international course fee']
  application_deadline = detail['application deadline']
  student_count = detail['student count']
  dorm = detail[:dorm]
  University.create(name:, description:, address:, city:, country:, url:, ranking:, domestic_course_fee:, international_course_fee:, application_deadline:, student_count:, dorm:)
end

puts "Creating Users"

10.times do |i|
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{i}@gmail.com",
    password: "password"
  )
end

puts "Creating Reviews"

# reviews = []

# universities = University.all

# universities.each do |university|
