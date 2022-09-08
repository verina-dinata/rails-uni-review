# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"

Favorite.destroy_all
Review.destroy_all
Department.destroy_all
Education.destroy_all
University.destroy_all
User.destroy_all

puts "Creating Universities"

# regex for email domain: /(@.*)/

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
    dorm: true,
    'email domain' => '@student.unimelb.edu.au',
    logo: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ed/Logo_of_the_University_of_Melbourne.svg/330px-Logo_of_the_University_of_Melbourne.svg.png',
    image: 'https://www.unimelb.edu.au/__data/assets/image/0005/2749640/varieties/medium.jpg'
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
    'student count' => 25_500,
    dorm: true,
    'email domain' => '@anu.edu.au',
    logo: 'https://seekvectorlogo.com/wp-content/uploads/2021/12/australian-national-university-vector-logo-2021.png',
    image: 'https://apru.org/wp-content/uploads/2021/12/ANU.jpeg'
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
    'student count' => 42_871,
    dorm: true,
    'email domain' => '@uq.net.au',
    logo: 'https://1073zb3xfs20yv98x228do7r-wpengine.netdna-ssl.com/wp-content/uploads/2014/11/University-Of-Queensland-350x350.png',
    image: 'https://www.easyuni.sg/media/institution/photo/2019/07/15/UQ_1_Wide.jpg.600x400_q85.jpg'
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
    dorm: true,
    'email domain' => '@uni.sydney.edu.au',
    logo: 'https://seekvectorlogo.com/wp-content/uploads/2018/01/the-university-of-sydney-vector-logo.png',
    image: 'https://www.sydney.edu.au/content/dam/corporate/images/architecture/quadrangle/high-quad-shot2.jpg'
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
    'student count' => 11_455,
    dorm: true,
    'email domain' => '@uon.edu.au',
    logo: 'https://courseseeker.edu.au/assets/images/institutions/3014.png',
    image: 'https://www.newcastle.edu.au/__data/assets/image/0009/695592/home-hero-nuspace.jpg'
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
    'student count' => 25_000,
    dorm: true,
    'email domain' => '@student.uwa.edu.au',
    logo: 'data:image/png;base64,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',
    image: 'https://www.studyinternational.com/wp-content/uploads/2020/09/shutterstock_544192189_University-of-Western-Australia-1.jpg'
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
    'student count' => 20_771,
    dorm: true,
    'email domain' => '@student.adelaide.edu.au',
    logo: 'data:image/png;base64,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',
    image: 'https://www.adelaide.edu.au/campuses/sites/default/files/styles/ua_image_full_width/public/media/images/2020-03/nth-tce-campus-08063_uoa-1440x500.jpg?h=57013b68&itok=v2e3CqAR'
  },
  'Universiti Malaya' => {
    description: 'The highest-ranking Malaysian institution is Universiti Malaya (UM), a public research university based in Malaysia’s federal capital and largest city, Kuala Lumpur (which features in the QS Best Student Cities). Malaysia’s oldest university, Universiti Malaya was established in 1949, based on a merger of several existing colleges in neighboring Singapore. It offers courses across the full subject spectrum, with an enrollment of more than 14,580 undergraduate students and more than 13,700 postgraduates.',
    address: '50603 Jln Profesor Diraja Ungku Aziz, Seksyen 13, 50603 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia',
    city: 'Kuala Lumpur',
    country: 'Malaysia',
    url: 'https://www.um.edu.my',
    ranking: 70,
    'domestic course fee' => '42k RM',
    'international course fee' => '300k RM',
    'application deadline' => Date.parse('20230831'),
    'student count' => 17_192,
    dorm: true,
    'email domain' => '@siswa.um.edu.my',
    logo: 'https://apru.org/wp-content/uploads/2021/12/UM-Logo_new_-version.png',
    image: 'https://www.etawau.com/edu/UniversitiesPublic/UM/UM_01b.jpg'
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
    'student count' => 26_808,
    dorm: true,
    'email domain' => '@siswa.ukm.edu.my',
    logo: 'https://dxvn2m2gq0cmw.cloudfront.net/landing_page/272/original/UKM_logo.png',
    image: 'https://assets.nst.com.my/images/articles/ukm50th_1589945315.jpg'
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
    'student count' => 25_628,
    dorm: true,
    'email domain' => '@student.upm.edu.my',
    logo: 'https://upm.edu.my/upload/dokumen/20170406143426UPM-New_FINAL.jpg',
    image: 'http://blog.fsi.com.my/wp-content/uploads/2-UPM.jpg'
  },
  'Universiti Sains Malaysia' => {
    description: 'The APEX (Accelerated PGelugorrogramme for Excellence) agenda among others is to propel the university to be one of the best institutions of higher learning in the world. USM is also the premium Research Intensive University in the country and has adopted an innovative approach to higher education, departing from the traditional faculty system to the broad-based school system. A university that champions sustainability issues, USM has 26 schools, offering undergraduate and postgraduate education and research based studies to both local and international students.',
    address: '11800 Gelugor, Penang, Malaysia',
    city: 'Gelugor',
    country: 'Malaysia',
    url: 'http://www.usm.my/',
    ranking: 143,
    'domestic course fee' => '56k RM',
    'international course fee' => '67k RM',
    'application deadline' => Date.parse('20230630'),
    'student count' => 24_375,
    dorm: true,
    'email domain' => '@student.usm.my',
    logo: 'https://www.usm.my/templates/yootheme/cache/usmlogo-693f22b4.jpeg',
    image: 'https://s3.ap-south-1.amazonaws.com/gotouniv/cover_photo/4057/cover_photo_1500X500.jpeg'
  },
  'Universiti Teknologi Petronas' => {
    description: 'Universiti Teknologi PETRONAS (UTP) was established on 10 January 1997 and is a leading private university in Malaysia. The campus is built on a 400 hectare (1,000 acres) site strategically located at Bandar Seri Iskandar, Perak Darul Ridzuan, Malaysia. The university is a wholly-owned subsidiary of Petroliam Nasional Berhad (PETRONAS), the national oil and gas company of Malaysia.',
    address: 'Persiaran UTP, 32610 Seri Iskandar, Perak, Malaysia',
    city: 'Seri Iskandar',
    country: 'Malaysia',
    url: 'https://www.utp.edu.my/',
    ranking: 361,
    'domestic course fee' => '78k RM',
    'international course fee' => '106k RM',
    'application deadline' => Date.parse('20230228'),
    'student count' => 8400,
    dorm: true,
    'email domain' => '@utp.edu.my',
    logo: 'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/fqqdbmwb7sqetz5ftee8',
    image: 'https://www.easyuni.sg/media/institution/photo/2015/12/30/222.jpg.600x400_q85.jpg'
  },
  'Universiti Utara Malaysia' => {
    description: 'The Universiti Utara Malaysia (UUM) campus is situated in Sintok, 48 km to the north of Alor Star and 10 km to the east of Changlun, a small town situated along the North-South Highway. The 1,061 hectare campus, which was originally a tin mining area, is surrounded by beautiful scenery, lush tropical forests and mountains. In addition, two rivers flow inside the campus, the Sintok and Badak rivers, creating a most pleasant and serene environment.',
    address: 'Sintok, 06010 Bukit Kayu Hitam, Kedah, Malaysia',
    city: 'Sintok',
    country: 'Malaysia',
    url: 'https://www.uum.edu.my',
    ranking: 481,
    'domestic course fee' => '35k RM',
    'international course fee' => '40k RM',
    'application deadline' => Date.parse('20230530'),
    'student count' => 20_000,
    dorm: true,
    'email domain' => '@uum.edu.my',
    logo: 'https://uum.edu.my/images/2022/05/19/logo_uum.png',
    image: 'https://www.mysuncampus.eu/sites/default/files/2020-04/UUM.jpg'
  },
  'Sunway University' => {
    description: 'Sunway University, one of Malaysia’s leading private universities which is a strictly not-for-profit institution and dedicated to quality education, supporting enterprise, and undertaking research focused on key global problems. The University is based in Sunway City, a thriving green resort city built on reclaimed former tin-mining land, on the western side of Kuala Lumpur in the heart of the Klang Valley. The University is relatively young by global standards, but is already ranked within the top 2% of universities in the world',
    address: '5, Jalan Universiti, Bandar Sunway, 47500 Petaling Jaya, Selangor, Malaysia',
    city: 'Petaling Jaya',
    country: 'Malaysia',
    url: 'https://university.sunway.edu.my/',
    ranking: 630,
    'domestic course fee' => '95k RM',
    'international course fee' => '100k RM',
    'application deadline' => 'Rolling Admission',
    'student count' => 8000,
    dorm: true,
    'email domain' => '@sunway.edu.my',
    logo: 'https://upload.wikimedia.org/wikipedia/commons/2/29/Sunway_logo.jpg',
    image: 'https://easyuni.com/media/articles/2022/03/10/resized_Sunway_University_Facebook._Sunway_University_Campus.jpg'
  },
  'Taylors University' => {
    description: 'Taylor`s University is the No. 1 private university in Malaysia and Southeast Asia, ranked #332 in the QS World University Rankings 2022. This ranking places the university among the top 1.1% of the most influential institutions globally.',
    address: '1 Jalan Taylors, 47500 Subang Jaya, Selangor, Malaysia',
    city: 'Subang Jaya',
    country: 'Malaysia',
    url: 'https://university.taylors.edu.my/',
    ranking: 284,
    'domestic course fee' => '100k RM',
    'international course fee' => '120k RM',
    'application deadline' => 'Rolling Admission',
    'student count' => 15_000,
    dorm: true,
    'email domain' => '@taylors.edu.my',
    logo: 'https://upload.wikimedia.org/wikipedia/commons/6/69/Logo-Taylors-University.png',
    image: 'https://live.staticflickr.com/2457/5841190957_02df6b75d7_b.jpg'
  },
  'Management and Science University' => {
    description: 'Management & Science University (MSU) is one of Malaysia`s top universities with a focus on developing and delivering quality human capital in national and global critical- need areas; among these are Medicine, Health Sciences, Pharmacy, Information Sciences, and Engineering, besides Business Management & Professional Studies, Education & Social Sciences, Hospitality & Culinary, and Music & Fashion.   The moment you step into the MSU campus, you will experience the dynamic cultural diversity that is felt all around. Our students bring life into the overall vibrancy on site, with their combination of personalities and lifestyles. Their different racial or academic backgrounds and experiences, add unique features of the university, where individual growth and communication are leveraged.',
    address: 'University Drive, Off Persiaran Olahraga, Section 13, 40100 Shah Alam, Selangor Darul Ehsan, Malaysia',
    city: 'Shah Alam',
    country: 'Malaysia',
    url: 'https://www.msu.edu.my/',
    ranking: 640,
    'domestic course fee' => '30k RM',
    'international course fee' => '140k RM',
    'application deadline' => Date.parse('20230108'),
    'student count' => 15_000,
    dorm: true,
    'email domain' => '@student.msu.edu.my',
    logo: 'https://easyuni.com/media/uploads/2018/11/27/logo-msu-min.png',
    image: 'https://www.easyuni.sg/media/institution/photo/2016/03/14/A_VIEW.jpg.600x400_q85.jpg'
  },
  'National University of Singapore' => {
    description: 'A leading global university centred in Asia, the National University of Singapore (NUS) is Singapore’s flagship university, which offers a global approach to education and research, with a focus on Asian perspectives and expertiseNUS has 17 faculties and schools across three campuses. Its transformative education includes a broad-based curriculum underscored by multi-disciplinary courses and cross-faculty enrichment. Over 38,000 students from 100 countries enrich the community with their diverse social and cultural perspectives. NUS also strives to create a supportive and innovative environment to promote creative enterprise within its community.',
    address: '21 Lower Kent Ridge Road, Singapore 119077',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.nus.edu.sg/',
    ranking: 11,
    'domestic course fee' => '45k SGD',
    'international course fee' => '80k SGD',
    'application deadline' => Date.parse('20230319'),
    'student count' => 38_596,
    dorm: true,
    'email domain' => '@nus.edu.sg',
    logo: 'https://nus.edu.sg/images/default-source/logo/white-1200x630.jpg',
    image: 'https://www.quantumlah.org/administration/ckeditor/kcfinder/upload/images/utown.jpg'
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
    'student count' => 32_699,
    dorm: true,
    'email domain' => '@ntu.edu.sg',
    logo: 'https://international-sustainable-campus-network.org/wp-content/uploads/2019/10/ntu-logo2017-iscn-international-sustainable-campus-network-member.png',
    image: 'https://www.latrobe.edu.au/students/opportunities/exchange/partners/images/asia/Nanyang-Technological-University.jpg/1680.jpg'
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
    dorm: true,
    'email domain' => '@smu.edu.sg',
    logo: 'data:image/png;base64,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',
    image: 'https://static1.straitstimes.com.sg/s3fs-public/styles/large30x20/public/articles/2018/08/27/bp_smu1_270818_90.jpg?VersionId=cerYEVfOCTfAcx9FK.7FgTgDiYKYM5Pk'
  },
  'Singapore University of Social Sciences' => {
    description: 'SUSS is a university with a rich heritage in inspiring lifelong education, and transforming society through applied social sciences. We develop students and alumni to be work-ready and work-adaptive, aspiring to reach their full potential, through our 3H`s education philosophy – "Head" for professional competency with applied knowledge, "Heart" for social awareness to meet the needs of the society, and "Habit" for passion towards lifelong learning.',
    address: '463 Clementi Road, Singapore 599494',
    city: 'Singapore',
    country: 'Singapore',
    url: 'https://www.suss.edu.sg/',
    ranking: 330,
    'domestic course fee' => '30k SGD',
    'international course fee' => '130k SGD',
    'application deadline' => Date.parse('20230930'),
    'student count' => 14_000,
    dorm: false,
    'email domain' => '@suss.edu.sg',
    logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAT0AAACfCAMAAAC85v7+AAAA2FBMVEX///8AOl3uMSQAN1sAMlgANFkAL1YAI08ALFQAKlMAIU4AJlEAKFIAH00AM1ntHwr2op73tLHp7fCqtL51h5gAG0vW3OHy9fdRbIPe4+e2wcoAPWB/kaLtGwDv8vRheI2bqbYvUm4VQ2SzvMQ+W3XL0dcmS2nP1tyMnKu8xs5ddIqir7oAF0nuKBgAEUePn6395+ZEYntrgZTxZl/83dv+8fD6zsz5w8HvRjz3rqoADkb1mJTwUkrxX1fzfnj0iYQAAELycWv5vrv1kIvvOCzzgnzxYlvvQTcfogpjAAAfM0lEQVR4nO1daYPjJtK2Bgnd7okvybba9213e+zMkcy5k+xu/v8/einQgRCSkLvn3S+uL+l4pBI8FFDAU0WrVSad/Sw6rDZjbTzezMPerrsflj4rl/e/ffny2zv159+R5//60PAjg9G5F84XpJiLzerQOy+3nYYaBBnuZ71DohDqvW6qsNOdtk0P6whpTJCBLc/Eq2gfqOp4//Xx4enp4fGrIn7vvrHnf6rjNzivbNPGRlxMhJCOLddF4WygrCMnw2OIiULdSKvN6n05r5XrvbyYdvJ+XhB2vctRqS0+Pj69ofL0+LHZ809qcHfOCxNLi4kMy0TXvZIWToLu3LTk9Tawi8OuCoBn5CGpiqRsthOOarW8e3yTyqMCHNzzT28USjm8OlZVMZHu4V4TCwwi266st2G703WNkiOuLFSsyEXnGj1fnzL0nn6vL/zv3PMPP2qreu3rtaXUdH+lbIBnB9crNMxFt0LHcFNtd6kgy91VGfJ7zvRUjO9D/vmap5eeQlVpdd2FEn7rsaWmENn6sUzJ0ZF3e6lYuFRPq/XbQw6NT3XF/yv//PvKh6eOeimROd/Wfby189VshuE3lo9bvQalAj3eprRgb3NoPPxWV/78849/VTw62SgaXiyGc60Z7kOvWb3Ni8R3C+1GSkCPH70Sen8q22pHb9A/mGBcOcvNm7WGBg1SGPZDxa6fE3v+Ouh9VB0nO7p6J0sF9SsmuebgEXEPeSVRM/NNxLq+Cnqt3PN/lD+3aGx5VPqlk0d4C3gEvlx7jPyblJBySddvjdH7k/cPyzvu4ba6amhTovDs3lhvhxtMJ+VjXk1PwbtXQa/1e/rG439KH+qatxbTkXvOg3KjqVFoc57fQeZ86rbp+1hrm77j2mXjjRG+Dnqtn2yp9vT4d+kjgWx0QdgzfbetYd93vJKVVr6ynMwlzyOoN3Ge275vulZZvXEvVbItNgHy8HU5iM2zsz1eF760aEg6b9yAXuvjz8fHx4fvFb5er9hvdWcTJZs/wXA/O2ATy+przWQKu8V+S9ZRvdEwrvdwfZxq8iWhMU21XAq4uPPCLN85XpxiyV7N9kA+VO6vTAptjJxroUdudwuz2Mxy21uI1SG+XGEtO5zNfUmzpbY3FIuFPLmhd3aGuJR+rXFPQXZiHfBGPpqtp674qHTc24umZxjyuXnYs0QDzJojEr6FxuUbod1xfin8SnOuioyFulrT0kc7kZmrk3zODQUb1eelq5JghvP+cDbnCvML0it38Lo6p+e1/D0F2QoTri4dMxKZ9PocNn3Z3lIgdLlSt4bJmTdoc5b8PBTWt07dNlaU7ibYK/kTv2LcK3TcGmXDSwI36s9kD+yFKdytOXoIrulugpmZ/THv7LUr2zQumI8Nw7BebZ0L8v77m4eHf/8oXaUJU5u9rNW4HLs6MnSvLV/nCgMWLqtMJtu5Q+qt2+4s+62Xd/a8OtMDGUTh6jAr7eE3oPcj8ffeljyA8uOLpaCzNepdVtcymIXmcFROvdbRZTU9Tsq1+CrFqpHm6P1Ml2ol7nInP74Y5VOGqhi55qgZ9Upl8SpactIYvd/4da70GEmYNHDd2UC99PMD1qH+DZm0c1pQyUTQSBqjxx1rvHmS7rEIY7xVsbOtJoIx63LvoVbyjox86dVQfsH+noje7KVlfKWhQEAPvbRYrV+ytyygpzBD1oiAHqp3NaQi+FG+8rF5ufyCcw0BPfn6uomI6N1oNeO8K2DXn3XXSlP0hDM42bSxFhal5kvLKC41zNvoG3NhofYKA19T9N7Vn+cOhYXaywc+oTluHPjExbL34nI1n3O/8dwD6eZyIG6I1C2samUjbJuYjakvIIUFpFm/CKqRxujxxvcgX+2Km3Fo/EKu2UHcBnRVVlmijAqHGs5LJ7Tma41PGeeqZHe5UFmEbzKWVGaFM1j/Biey0xe1aPbilmbI5IZ1bsL3+1a2TXAsVBY505eYn7jlBda3aj51zIsb98hU5x9J5KYdqvdvv//nbfmxRmEHnIhuXl8w+kkOEg0zbGo3RRMGPe54d3PJfsne8kp2OqM7KyVaokwkp0xAs9iU7x3JRPR8EsH+ZnebE/RL0FvK6Q6G7YTdm3pwyWkusvzVrIHhiAcbmSJsWtdl86L9EvRaJYUkAFqkndWpxamIvhoHoKP1RpN6DSCB9Aw0Ft0zx72GCP4a9EblVAKgVJvzpgiKZxI5haTem2ikUu9lDXVPt82Fclu0bkTvw19v336qPNENq/m2QEonCCqXkri61dwn4ClsFOIErrX8MyAorM6Kw8EN6H34+fj48PD4WEVaDurYJRRBfOgqt/Ollv9MEKyPE7iosJMQzCMqADZH7/1D7C0//LvC/IauCn2vbftq8QFEFu16fTCuzmeVLbJSYz8i3F/VL+Qao8fRvp/+XfHcUJGWbtj+tZ6wTCRYKLDvod7WKazygKcVY3K+ZJ5eSZhv3YDeTz7i4EvFg52FKoVPd+Yq6/Xgosr7JB7wrFzPUcKekQuyPCl9JZWm6DWJODiYquRb5C5U9iobUObt9qxUzXClXDDNalc1bFP0/sqjVx1xMGorU6zJglNhmN6qhqlAwEFFBMhorK7HvJR3318YcQCyk1DCSsTwq3sJE6UQqbjefsUualfGfispWDnr4NdFHDCpjSrjxFupTL8z5KnWG2sV9rwPTcWGQH5Z2NYvizhIJThuJFxMqeia0kJpdPFV6+1Wzb6dWWmspSBl24mN59wcelUuCyeDCJlKPRjpak7+EIJWVQBEfvX23XC2ckqZ3jx88kmtMXpveSZG3bCXyTYaOwrtjDTV9e/gvPFLgpPz9a7be5qMroZj1fmSr8Ud/ZpFHPxUrCmT4TH0a3uK0eCcsNOdWkRhteUgrNAew+51TGywSo2UNHTDOvf3hIH2Xb2iiWxnoVWNoK0y82YyPB6QUxptAFLNXOU0LXuLiqJJzy9v2WP59BUiDv6rFIcvEYJgu2LU6jfepBx2IdqgtN6O+snF8HjxynIV6JLnb9vf+/C+QQYNmWx3mzJ/4TaK1GC2Mktco2akgWB56Uub1pbMu79md1RFyLzpSEcaX313Mied40rum9fSu0VFZ12yRpI1wv8OPSLbqS/B7wXMjWFUiP8gYjSnS85wsWBmcdr9n6JHmvnqFHrJi+g5QeQWxy3vBj2HQmyXhMb5P0aP2F9x2865sesy6awKp783ETfO4j6gZEC+hUvw49vX39++cNrgZCV2Nu9lvI3WVYQPz25RsxPUoEXhkebofX98egIixg3eXomIDAnrpTzxqdAexm1MZ7FcuPCEgN6ftSq/JS88VITVN5OOcNadRTXeKmJE2m38eDG20CuMKPkdp4eyAJZUuGXuQ7OFWoVc80MfurxUochDKvY5JRHmH7Pgx+ez0zzVpkbin67ZWVYXgen8ck5sRzz1vk1NbYxSfr/u6WuNvlzipXqsFaWT7yKvEMazeBX0hD5RRC/PQ65NLJUz1VqslSU/yr8CeiKL6zYtAmuo2HNbAno1W+35SUYlg5ySCOPey9nsYgYC9ut+F+2WDZxJwfaKs0Yugxwxp/9W6/v+pIJepxtF5yYeqmB7hVkjGJF6q2ezLNjeGH6bYRdj7JnqZOVVvg0kwZ5/5/GomQn+eVOPXjB1bIwtU1MOJxHGvYJTH7keqbdrq/uBQjwkGHOYfMTaqO6BCW6jZOb+lO+6T9+q1OWz9b35R/bMUE8+6qs6qWJsVh6lYJ44/WqHbq1iZNs1twBB/arUhpmMhKAn2QFnHpA3j1UO87d8N5emiuT2efFC7ZAnzBN8hJUaR3sybLVF3FkIJj8L7FM3VDE/IUxEuvcjDGUlQbdUvgh2KotujnhHFSmdcIsscSdXtSW/Wke1OfpAgna+3qQ5ovwEYCgEConrXFNGVvooGN+bh7Kh70/RTGVHasIn7U397CEGkOXHF2Hoxnp9txPXueakNdcEseuYM0sxEYfc7flDQK/M+v4WYZadhQ/EfR3khzXdV0yXhnPL3EJKK+TOaxpkJ6xPYdIQwQM9myqCz1kkmmP56vuTiMobWb6Gd18fxMdk2wRigCSRdv9QRdC7iLvg+R7SKSpETmWISiGvKGxriosPqsfDZQzR4arAdvNLHv36VIDvq9B7P/x4LDwk3VKQhPVAZMW8jCG6LGyBCx1Xmk4NCHol4/56UziTAC93Kj8pw+b8XGzafVjMimuUbV28Lxjfm6fHb1ki+Q+ffhaxIxDLiLclESXIdsNuofEmx02RoCtm1iok8GJimatimvVgdClS82iXG5UlP0TY1FfRcT2grREM17OD4UpIvn5p//lR6JSA38PX/3x5+/bL96+PMuxKwkvLIysMyxyH5+WWJX3rDEa7lSs9lBQUnss4gMgy0WXXXQ/pAmoy2J9DS0avYsvTTcURvIFtz3R813N807Ok/Gi94mTpHxk8b56eHh4enqT/VGZ6ZMQ4lZcSkWK6kGLR9R1I2i97xhSnwqCCP4QQtohCUm+f1FuuMCYnDJV5a1JxKxyld8W+WyelmYBmxUDOBiLhTaz7N2TPTQWNk2YtDojqUk3FKs67NVKxouuqs4KLdUWSNt621djyUuHIT70GmcLz4tY4/aInXAfem4pYjc78tqTGWlnO1kCdPy5KjvapnKVeEK92wf62CXx1V2ucm+TB56Q02/IS35aBWMz1HfVvKJipsNvRwPqeqqKEqAwlnkOtoFP56BJcb6l3MXV4J2zafVFfiRP3SeqYSOSxZguVyn7RtPsaVmXM0GBVJG3U1Vu2JN5eGnUMrCuezb/7R+L3FQ2vdLYV5Kgps+VB3Evdnvl+rhwlAGItSki361DlhhMqhjNV39GWrMcKhveH+jnkcaHcfzGfpbFU9itTdfptV6ULGfZsFffPULnzg5P3X6tHvwdVw0uqe1EKisD+VfGwZjuVL1DEejt1OzvLy6maNI5wv5jSuU4+/VFqf08Pj1VhfXIZnktyj2c1tf1eA7ZtcJz3a+ptVe/qJIqWB90soTwblr+4LVXGx++yhS1cuHYjP214vpgulnLbke75F7VTBk463dAzrbZcoV0XocvL4DjdeGRti3UDgRgGXPTmL6bHF+Q/+fTjD4j/forl4fHxze9/voRzFuzPl4Xj2hizUtLb42zT3fRGN2YZ2c4OG9O0c/W2XWdxbZx1IxjsZ9E1XM03mzm7E/BF/EEqHz7+9eXv7z9//vz+48ufH1+FrTfZLs/R9DKHYl4O0Xk0eGECwWA74ut9Xm5fXu+73OUud7nLXe5yl7vc5S53uctd7nKXu9zlLne5y13ucpf/vQTL6Ho9p7yK2Zmdqix36U+THZf2Yh9Np9ddnoaxnPJnp9sulVGOsrDekdd4LvSIPdXdp2cuy24q/AnWMMqIn+cZ/U/nPEuPfkYRO+ZbR1tWvOywOdjRx4NM75IvYHfEHRDuCQhRehS3jDp8GenDRNGZ4/8c6SNd18O6jt04jutqupRoOTvh0yx+cGOnt4BCSCAc07k6B+jypFvj9P/2ny0qtjlOQxe6mol1Q7fMTQL71I+f8vw4QCl0rEQ8LtVB0LeeE/hCk90ealt2QmjcP1uUvzp4xp8JGOvP+DlttbnnADdb91LF5oW+YiclTIJTBgsTQPAcxj7onixIENXrW5n0o1bouinHPfKtDXmwr2mGDqfoDLU5YlF7U13T/LgZT5oex6KtgI2O4AgaOVmcBoReuSlS2cULKLnkNISIAfZa8hPHgtfZFUFATUaxPGfGNzCzC6LHiMYoQ354Pa7HDjNy49LWvBG9kDUNhhw49OKwgZMpNqBZuPBixNhkQwdpSAcCAKap4UgVIJBiw1O19RUQ7b3Y+tak/AaNYbIu0bTtIeTm0ANA9Ulc0xi9OfmuhS+HjatrKA0s3VNs0tBruBOVFFQHRgwjHoYWKZa9Iq+R4sSRrCY8ZBgG9kgxFgme41i4HiJDDz4YJy0+Y3aXF0EP7jKDy8WtIC2It4wDjWK9NGMtoEe+jXRI8NOHly9tTd/0rkAvOg3ZE5DhaI0tCwOCbfhj3TqaycVhAUHaPkMUDivbaPH5WECvvcqhBxFqjDfZuZ6eU/rexdAwyrJakULTe6E7B51Fc5xd8hpNcD0M7eQiZTcJ1oZrjZwt/Yr0irky9GLOtIAe9JnkTm+i2I4VzHiNgA217eHKoJcCTtw47GR7+dc0eYL2h4Aqtpb0L3pNAAubIX9ARsSRLVw/l0NPs3ocehOHu+9qmI4uA1+zjmOUVh3QYx1Pp5HPAamFmbBKSOWYlabokaGUJWNqip7mdSTobZ1EMfmFvggKcmzPFBuIuDWIgXRMIVtL9kSmmEobUUi6Jul6E5pbBeUSMPPoGXFi0Ri9oyW9J/Wqaxi+l4RcZeiFhmZPWl2bh0WPY7My9Pb2LeghxPJhiujBIMzSTKwQK4fU9uKyerQUExPCzgLpE3n0tj7MBhDlRi0/gIK4xiH1ETj0LLgOBBo4Ru9gJCHCHZD4BaKKWH/HT5svQ4/U0KbocpHFpGA0Y1+GHvnFY22kbXZMeKqRHD28I70O7nwvoEcai17ROfTjJG9EgREyvcwZy7AZuMweIBrVti/pfTil6LXOBO8N+bTNRu/jCTG2WzgQ0fNbPUszNil687gxW/O+4zi+xfSTSQ/SUh7aSXaHZNyDmQtSKRAb4JLMJf2JohcEwZCURzsFDD0y5YHY/I2YJeidJ2AAyyJ6EPdvxQisYwWawRQzt4L8izsgn57sF3EA28A3KEPPn+9r0KNDH8rSwO43Pg0mMk7dAnqtORlWrzx6ANCWhT3FoaU2a+Ktm+TJ6sFkEYYXC7M5l7zG5RzZp+gR74UIpExm0zCgZ1DRnXr0dq099KLOrIBebMttFLsBgB5iiq1V/IDmwrftZLon09mJkikRy3pQgV5AvRg3o1UNzisHiKc0s2kevQn53T1iht6F/E0N9HLynSTJBDhYEVklLNsaaifoURTAmwJYwCoz/5/YCg3F56ILY8+RgLEImfDcVEAvIQvn0GtFNulFkS6iR+YAMoOOvGTuJQrQnOmdDhP0YsGbBIbOMbQhyb6/rEYPzEQTEhkEXQ2xWuXRo14hQYOiR3TGVkDMXo/Rg/tjdfDFSVlYcQE9Hfqfw9YaZ4vP5gEGvGXoIdME/nZSlJJZg0CVvB7ELlCMHtxrgwxNRA+ay5+QGSvOiSybNTTbBKMXksDtSVdrhzXokRpk4fDDGPyBx5pYQC++uIiiR5wBzUr6IGZ1gnxosR+fhBAT9PSIDNHHeFELK4M0Mrvrxff8knFvMxyAx5VE+Jag1+oTiNhfxDmlH03QCxjRWERvTYzvaqQWK/NY7P1wCDWLx+5OApXF/ClV9KJnc0b/2HrsGyJ67OIi5i2T8R+NmdZhjB7UfsGEWCEdpmHWyLEtideMMOuMXT/x/eI5F4YG61qJHjjjtG8HxBlxRxx68QgsogdOSzuLxCv1WEIyqxlgn6PPpzgphsXaUhU9mKCMaLmfoXi1UECPXiTF0Bv2YVw9dJfHg8+u7iaecjooERujn848lljodW3matbdbUhzY2ZqZuyxAADmmaFHRjEmPX5c2YPJb87HHozNdGhN0WvNXBl6NFFeGrQO494l1htx67BWa2GwyZPMo9i5dvddUnk69Snbnk/sCds2KRmrFodeP/66n6BHpjnSV9qWDZHOOji9ZOmQZUAjQw20dwE9Yqg6DZUGFO04Y2K6JJiRKfEEz0PT4FieeY/vYMO/QMp7xFZ5GXo09YUjogeLaC29xoHOubFeK/ZlWKE7NqK5ykcnOnjDnR0o2SVwqtBLPaol3IoALzvsrpYLxrRWPc9ItomOfcNNxpC5qdNdFsxSeqywlfW29Qk9k/FtZxrize2TkF2GYVhm6nzoyZtTF9FNpQVuJ2I85/YGrz6mH7XjG3Mnn5GTbJAtMHqGcWLPPs6EzMZGWsPJs54q1s0A8s6iZ1ZA8pIHNRusfIhdQIan0Q+fTaOfVAEU5+JTQkvnUkTse3NDH0/jphqu5mx9HGYZY47zLFfOurfAuH2J76Ubzi+cmZ3HFJvpppjSZRBtMDYuWc6JQfZmtKCvDa+HVLqFt3WMwnQx1V2kk2XnMB/xWuIaelw42Xqa6p3SOk3TnDOjTRhPzLsL0rUwaZMpl5Vmt8iHM3ZW89vuJr3LXe5yl7vc5S53uctd7nKXu/x/yXZ3Daf8be/7Yyr5DA6dY2/ay2XcDkbRIbwKOf+CJfyYkn66Ebca3h+m3MP7XkmqBErLyWUgX++m4TRl6mwjtjLnOD7stvV9lK2SedrOPoLXk52XbfZW/NOkS6q2U8wyw6ldOEDRwaaWfHZ3Sskv9jOvL3IsXdet7MnWzvKAFmQ5Kw6SyPNwm2h02E7D8WRlp2SDZ/KlFJT1Mz7JQv63Y0rLsd1p8q+slAb22EZx5xmzrY+NayfiLphGJ8kAfTXN5AC6i2L6kkGLvn+2kresZ/rLzLV1YEPpze6AoSnQKEVHS77F59ON957Zo6amtSllKCbzTGjGbIPye1Ke1WTDfoQzKkp/uuqan0IEaRzTHdXWzJLebjT0U1qOVyilC6Vcu+wcpsMl5kOwIwlZHZMyz5NzNXZftpHxkCiXJX6NblLNfEh9AUdZZsX1wgW5wn6vv7rSS9dstucGW/CeS8XnrmiGDIzuITq4FjCKQBYGHCOH0wVkc+rH+zvsxwP50dAwFKXHocdYFCnDrAQ9RsvpwVXIJ3YO5sJ+bFzKf/Ho+Rl3aLFkGtN8nil6sMGK/ct17sdMFIIeSl6DZEsBaQQvjKaWh9C4WJ4yGcFJQw8QCsCyzCNDT6qCFIwdgB2RxTbKcJIPdTBPKBatK07UDFb+Z3iOt70e1ogFpBcAytELUlpOeKI7eWtSOZsmbwqiPv2JQw/nshtR9LR2wKPXdZJDY6AvJXvv/Igx8uKc5cuFo3LVfSwLpFnJ7t/O1hC1ihWS5qDmt/tBBvxpGentdP8eulK6K76lJeTQI7jgMzHtpHHk6HG8jlQ5TjZEh/SLNejp8TEDQ29M+WLx6wNZVY6WeEirIluTv/QEDq1AR4ntkSEF8Smx4YA3LTl0SdiRn1mFyxg49IgKp7P0Unzl6AHLAs+4IcNPjtpTqUQPzk/Y8Sqt3Nos3Owi2t7SFthQSjLDfJZ90gK0KHANx57KiP/E4ASDKrou43ptcgwVoBqs6azgCk4Ih55OmWptZKzSusrGPZi2uNzHXSAs5J/g0EMrdmK268QaLbiFgZFAKGpnXLhKgKCn99hrdOSZnGiW7kO3UeaaSOdpEluX3fcA6NkelZw/wSY+3fav9FdiIWb2jztMyQTAABMOhTL0iNXBmS95NL47unTO1ekhks+OSIjFWsJRBz9rxCdm9ibWaHaWDmV/xej1cpVk9caM8ADnd/QTs5gN1a9Lc8YLUcyVHsha4A5wV8A4uROebnwvue7HbAopemYpehvEzsC95FaOEvRanUOfJnhG1HcjxmMLY3kOPcbxweNYI+kQVxhkEvSucvTYW0acyxHYUBTAk/qsEVc5lpHNRmtAj3mTrnhh3XY3N2FkAfd3nLuRacrofRcj5vZmkqIHA9Chezx2NwmZrQw9WNUcdOCYwxR4tDMeVSx8z90cKMfnMIw1wnAyNzQruqCEWGELpkt+AqIXSKp4cGZ5wh2Z+y6VvacZGUBhm7UxzBoBE1m94JIT6IAEFW48sdkVvxlXKJUUPfCUEaxgUOIxl6NHS7ditByY24T7d6pmDUCvY1PuK0WPDIPinUzirBHL5EhmHBHpCnE5LjIQpuiYVeKxtBKb6loUZSDLW8kwC44cFBHIqXZKLM15LHDdCko5Q5TaXoJeSssxGOUACFqzXCnq0Gvt6SKEokeZ08mEGiQstPy9v0nmtLVXaPwKoTz4uOd78URfht68bzGgydxMybQbUrkxgzQyEw9/ZaRcod3pM6hO0CP/1edMSNelcAB6xW2C5edTnNe0zazmCLR75mGv2yf4pRY9sthOAyEiUkmPDeAj8xn8KdH2pid/loDQ5JpnWCR4m91xN4fFEHOL5Oh1nsmkvtiNRnDLD6VJ0eWoGc6OESI/xXSN3I90WIjRg7ki5W247FIYUlcjvFKZZjZ4IDC7U6DlGDEjFa7DhVKeV6SVPndEj6XHZM2jR9lfsZ8Hi0d3dT5SHpLH0DOu8VtgatBhtGi5PychHIoygTzzCFsw4VgxlbLE9i4u0GQ8G6dIrSHLsMFedhIfeU1X5Bb98cTZHvE70v5DycMj5tsaOpN++qHRiajVKTcJ2dQIg3lWSluwPdhPoIJPE/YVhl5AahGj1xnj9HUztr30u2YPqDIaZUMBp6zZheBXh3J2iXeVrI5CS5feujjDHiUB4fRSs+GcujCobXNj7XBO741HhmdQtHYmglVIz9OzFUznZEC29v2znkqGXmtwYbSctqclo1Mvdigstr0z/Iz6dBixcaYBArS6fhqnte23rXi2CA7sdWQ5gHnr2M/ecqEyS41VRHekJMIK6czChbYIM4pO51DmM+6jy2JxiTjb3karsba55p2kdTTXuB97FxrdMOW1jlYUhWUvldz4N5xNN4s5r7ZzDsdcKbur+IqLTAGj/UWr9KX14ZrWabi7kNcPCZNolr0VsZ/Wu3CzWEXlHkBB/g+FT6y9bBlEiAAAAABJRU5ErkJggg==',
    image: 'https://www.suss.edu.sg/images/default-source/content/comm/we-are-15/timeline/Mar_2017.jpg'
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
    dorm: false,
    'email domain' => '@sutd.edu.sg',
    logo: 'https://istd.sutd.edu.sg/files/xsutd-istd-logo-web-2022.png.pagespeed.ic.nGX33j111e.png',
    image: 'https://images.squarespace-cdn.com/content/v1/52c27120e4b03b18ff1956cc/1545998002929-LQ7KF4VJUFCM9V0O7TQ6/UN+Studio_Singapore+University+of+Technology+and+Design+SUTD_Andrew+Pham+56.jpg?format=2500w'
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
  email_domain = detail['email domain']
  logo = detail[:logo]
  image = detail[:image]
  University.create(name:, description:, address:, city:, country:, url:, ranking:, domestic_course_fee:, international_course_fee:, application_deadline:, student_count:, dorm:, email_domain:, logo:, image:)
end

puts "Manually patching Coordinates"
@university = University.find_by(name: "Universiti Malaya")
@university.latitude = 3.1221317076137627
@university.longitude = 101.65368765508087
@university.save

@university = University.find_by(name: "Universiti Putra Malaysia")
@university.latitude = 2.9969109802356555
@university.longitude = 101.70555528391576
@university.save

@university = University.find_by(name: "Universiti Utara Malaysia")
@university.latitude = 6.457510
@university.longitude = 100.505455
@university.save

@university = University.find_by(name: "Management and Science University")
@university.latitude = 3.0780914642469623
@university.longitude = 101.55293423166276
@university.save

@university = University.find_by(name: "National University of Singapore")
@university.latitude = 1.296609511216492
@university.longitude = 103.7764268317635
@university.save

@university = University.find_by(name: "Singapore University of Social Sciences")
@university.latitude = 1.3294701834655231
@university.longitude = 103.77615440609962
@university.save

puts "Creating Users"

50.times do |i|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{i}@gmail.com",
    password: "password"
  )
end

users = User.all

# puts "Creating Favorites"
# users.each do |user|
#   3.times do
#     university = University.all.sample
#     Favorite.create(:user, :university)
#   end
# end

puts "Creating Departments"

departments = ["Arts and Social Sciences", "Business", "Computing", "Dentistry & Medicine", "Design & Environment", "Law", "Music", "Public Health", "Public Policy", "Science & Engineering"]

departments.each do |department|
  curr_department = Department.new(name: department)
  curr_department.save!
end

# universities = University.all

puts "Creating Education"



users.size.times do |i|
  2.times do |j|
    start_date = Faker::Date.between(from: Date.today - 6.year, to: Date.today)
    end_date = start_date + Faker::Date.between(from: 1.day, to: 31.day) + Faker::Date.between(from: 1.month, to: 12.month) + Faker::Date.between(from: 1.year, to: 5.year)
    academic_degree = ['Diploma', 'Bachelor`s Degree'][j]
    course = Faker::Educator.subject
    curr_education = Education.new(start_date:, end_date:, academic_degree:, course:)
    curr_education.user = users[i]
    curr_education.university = University.all.sample
    curr_education.university_email = "#{curr_education.user.first_name.downcase}.#{curr_education.user.last_name.downcase}#{curr_education.university.email_domain}"
    curr_education.department = Department.all.sample
    curr_education.save!
  end
end

puts "Creating Reviews"

reviews = {
  'The University of Melbourne' => [
    'One of the best University in the world. Undoubtedly it is a beautiful, green and comfortable place to enjoy your studying.',
    'Visited the uni today to say good bye after graduating from this lovely place and to take photos for the future. The University offers an amazing services for the students and many courses. My teachers were encouraging and considerate. Proud to be graduated from Unimelb.',
    'You have to work hard on the course yourself with not much help from school, you need to be able to teach yourself. You also have to be very self-discipline and reduce your entertainment. You also have to pay a lot of money if u are not australian. If you are ok with that the school is good because there are many interesting courses.',
    'Has it`s aestethic`s, although if you want a place here you must either be:
    1) Rich
    2) International student
    3) Ridiculously smart
    Other then that, don`t waste your time here studying a degree that will take you 5 years to get when you could get it at any other university for 3 years of studying only. A great example is the Bachelor of Nursing that Melbourne University offers. For starters, it is a post graduate course which means you must do previous undergraduate studies before hand, whilst you could have direct entry into a Bachelor of nursing at any other institution. Also, as mentioned above, the University is catered to those students who come under the three options, it is so disappointing to see very little representation of students who come from a lower demographic background. It`s not the 18th century anymore!',
    'Worst uni ever. So many mistake made by school admin while enrollment. A lot of confused standards and discribe for study process such as paying your fees etc. No idea why this suck uni can be ranked so high with such stupid services.'
  ],
  'Australian National University' => [
    'Has spent almost 10 years in ANU, it is always a lovely place for work and study, really enjoyed the peaceful nature environment and the culture of the academics.',
    'I spend 3.5 years of my life at ANU to do my PhD and I absolutely loved it.
    Campus is phenomenal.
    There are many sport clubs.
    It is amongst the top universities not only in social sciences and philosophy but also is physics and data science globally.',
    'Degree mill, literally go to any other university',
    'Worst studying experience & service'
  ],
  'The University of Queensland' => [
    'It is a Great university in Australia and is highly ranked on software engineering course. Also the culture of Australia is something that a person would like to explore. Job opportunities in Australia are really good and there is a huge demand of software and data science engineers in Australia',
    'Terrible University, didn`t have an origin kebabs on site. Would not spend another 40 thousand dollars at this venue again. Instead I prefer the much superior facilities at The Queensland University of Technology which does have an origin kebabs.',
    'Fantastic facilities for students, it`s such a treat to have well-maintained grounds and good equipment. The library is always clean, tidy and you can easily find quiet places to study.',
    'This is a university in Queensland. If you are looking to go to university in Queensland this place has your back. Nice trees and I hear some resident turkeys can tutor in horticulture.'
  ],
  'University of Sydney' => [
    'One of the most prestigious universities in Australia with great history yet artistic and innovative at heart! Love thr broadwalk and this Quadrang view never gets old',
    'THE WORST UNIVERSITY I HAVE EVERY BEEN TO!!!!!
    1)TERRIBLY EXPENSIVE: apart from the ranking and recognition - really worth your money?
    2) INCREDIBLY SLOW AND TERRIBLE SERVICE - they posted my first student card but I never received it, have to complain via a call very badly to get my card. IT TOOK ME FOUR MONTHS TO GET MY FIRST STUDENT CARD!!!!!!!!!!!!!!! ARE YOU SURE YOU WANT TO WAIT FOR HOURS AND HOURS TO BE ANSWERED????!!!!! AND YOU`D BETTER BE CRYING OR WITH AN EXTREME EMOTION TO GET YOUR PROBLEM SOLVED.
    3) VERY VERY BUREAUCRATIC - why do you create so many extra steps that take so long and still not working well???! Because you have too much employees and insufficient work for them to do? Many times the website will just guides you from one page to another, it provides no answer to your questions, which forces you to call.
    TBH, I REGRET MY DECISION TO ACCEPT THEIR OFFER IN MY VERY FIRST SEMESTER, BUT FORTUNATELY, I`M GRADUATING SO I NO LONGER NEED TO SUFFER. LOL',
    'Trust me this is the best place in the world to study. Australia is the hub of study, environment is the best. but but.. this uni is quite expensive and requires a lot of effort in order to maintain your studies. if you are good at studies, which i was not. this is the place for your,, make sure u check the fees before :)',
    'One star for their prestige and a few good people working here. But a good majority of them are unsupportive, and egotistical. I learnt nothing of relevance to actual work.'
  ],
  'University of Newcastle' => [
    'Not enough subject choices- too limited! Would love to study here but only has three subjects which is a real shame. Hopefully they improve soon.',
    'I came to this university after completing my degree in Sydney and moved from Sydney to come here. The problem with this university is that there is a huge problem with bullying across the campus which has also been noted in the media as well. I recall coming across Associate Professor Heather Sharp in the education faculty screaming during a lecture and going on about how she’s against multiculturalism. Considering most of the student body are international students, it was a ridiculous statement.',
    'This university does nothing to help me as an autistic and dyslexic person to actually learn or apply the content. The only "help" they offer is an extension on written assignments',
    'Great campus, but the problem is that there is no help for us international students. It would be good if there were more support and programs!'
  ],
  'The University of Western Australia' => [
    'The University I studied in, really a beautiful place, its modern yet quirkey with the rustic look. Very beautiful at night. Have loads of animals, can be sort of a tourist stop as the building itself is majestic. One of the better Universities in Perth, have a good education system, and everyone is friendly.',
    'These guys are so bad.
    Emails don`t get sorted, they just kick you off without answering your questions.
    Their admission and covid team are USELESS,  no one responds properly. Even visiting the admissions office in person doesn`t help.
    They say "send us an email" which they can`t answer within their own time frame.
    Ridiculous.',
    'The experience is great, meet new people, make new friends as well as learning the latest information with associate scholar. Now more clubs than ever time join and have fun.',
    'Lovely environment not just focused on the facilities but also on the fauna and flora. The campus is simply amazing with a wide range of buildings for various subjects. Faultless.'
  ],
  'The University of Adelaide' => [
    'Few electives available in one semester, ban you from the class that they think you have the ability already and force you to choose other subjects. Make decisions for you but not give enough help. Always feel helpless and anxious. Two stars for the teaching quality and ZERO for student service.',
    'The lecturers are wonderful and the only asset the uni has. They are supportive, patient and encouraging.',
    'Currently studying master of mechanical engineering here. Nice campus with warm staff. Some places are unable to access if you are not a student of the faculty after 6 o’clock on weekdays or whole weekends. The teaching styles of professors are all different but normally satisfied with them. If you are looking for a better future, be better prepared.',
    'We Adelaidians are so privileged to have such highly advanced facilities for education. Thankyou to all staff for your fantastic efforts.'
  ],
  'Universiti Malaya' => [
    'Top university in Malaysia, it`s good to study here. The cafes and foods are very nice especially the Faculty of Science roti canai. Have quite some good places to relieve stress and near to most malls around KL.',
    'The best place that I study right now that got many necessity for student',
    'Bad administration, bad module registration, bad student mobility, and bad college facilities. Overrated for a no1 university in Malaysia. I still have to suffer in this university for another 1.5 years',
    'As a student, I would say I`m lucky to be able to study here, the facilities here are adequate and there are many places with beautiful sceneries such as the lake where students and visitors can go canoeing, i dont know the exact term, too lazy to google.'
  ],
  'Universiti Kebangsaan Malaysia' => [
    'Very advanced architectural study and research centre. Don`t let the poor condition of the building paint facade fools you, this place is among best of the faculty among others with its very humble and proffesional lectures which came from various educational background from Masters and PH.D. They also have good proficiency in English. So international student don`t need to worry much. It is even better if you practice simple malay language if you were international, and it was more welcomed to speak malay since it was National University of Malaysia were as you know national relates to the country, Malaysia',
    'Quite a hostile and discriminatory environment for non-local students. Unfortunately, the university is so vastly different than what`s advertised. They are not prepared to deal with international students at all. During my four years here, I faced countless amount of issues with my visa due to their poor departments coordination. Once you finish your studies you will be asked to leave the country even before receiving your transcript and certificate. Horrible student experience.

    Also, be careful not to get scammed during the visa process by them, because many have. Make sure all your dealings with them is through email in writings. During your studies, an international students coordinator will be assigned to you, but won`t be helpful much. No one seems to be trained on how to deal with international students issues, you will feel lost and excluded from all important notifications that local students receive.

    As for teaching aspects in Information Technology related majors (took a 4years Software Engineering course), their professors have poor communication skills and teaching abilities. With outdated courses and professors out of touch with current industry practices, you will face a huge load of useless repetitive assignments that keep you busy, but without any practical knowledge. If your plan is to spend your whole life in academia and continue your masters, phd, work career in UKM, then yeah go for UKM, they will love you there. But if you have bigger ambitions, UKM will make sure to waste 4 years of your life and keep you distracted from self-study over academic work.',
    'I am doing my PG from here and it`s a v nyc university. 1 of the best in Asia and also the fee compared to others is nominal. The science department is v good. People and teachers are courteous and students are not over burdened.',
    'Very big campus. Law school is great. Adequate facilities for "tutorials" and lectures. Lecture room is very big. The library has a sleeping area, which is great. Professors are really kind.'
  ],
  'Universiti Putra Malaysia ' => [
    'I just loved it here. Living inside campus for a year now. But only got physical classes for 1 month. I really miss that busy month.',
    'This place that calls itself a university is nothing more than a plausible commercial advertisement aka $pam. Who should go to this university? Those who have loads of money, and do not know what to do with it. You are also the right candidate if you have years to dillydally. Indeed, it is also an ideal institution for those looking to inspire others on why to not select a bad university. These intelligent researches may also be studying on how awful universities can be. Now who should not join this university? First, those that do not meet the eligibility requirements mentioned above. Second, people who genuinely want to study. Third, individuals who know English.... Infinite, who need jobs in future. :D.  I am sure I have made my point, however if you still want to risk it, then I must say you are definitely adventures and love challenges life throws at you.',
    'As I am a student of this University,I really feel proud of this.The campus is huge&the environment is very study friendly.Though the campus e very big,the movement is very easy because of the given bus for transit.Someone can only feel the beauty of the campus when he will visit it...',
    'Poor management for new intake. Though there are many volunteers, only concentrate in registration area. Nobody and no sign guiding parents and students to the registration area.'
  ],
  'Universiti Sains Malaysia' => [
    'Hey guys, given your post-pandemic lavish expenditures on the main campus would you make a room in your budgets to upgrade the old degenerate buses that goes back and forth from engineering campus????? They have been in service since day one I joined your uni… i am drenching in my sweat as I am writing this review.',
    'Great place to learn, good place to hang out with friends and study, bad basic facilities',
    'Best university in Malaysia!High education study place to learn a new knowledge!Professor very friendly and get close by course mate which from different country',
    '4 years studying here and I`m gonna miss all the memories created here.'
  ],
  'Universiti Teknologi Petronas' => [
    'A university in need of much reformation.

    Many graduates here are selfish and insincere people who believe the world revolves around them and only them. The immaturity in them is too much to bear.
    They care only for themselves.
    I thank God that they are a few who are not like that.
    I urge the present students to be selfless and to THINK critically during their time as students there.
    Have a heart, your skills are meant for God, not for yourselves!
    UTP is a big disappointment in many ways. But it can be redeemed.
    Much can be done. Much must be done. Do not waste your life, reader/ UTP student/ UTP Staff.',
    'Not recommended coming here. students voices are not being heard. very poor management by the admin.',
    'This is the WORST university in Malaysia. The staff are unhelpful. I registered for chemical engineering course. The staff seen my message and didn`t even want to help me when I am unable to register a student account. I contacted at least 5 staff and none of them have been helping me to solve my problem. Never waste money in such university which does not cares about their student matters.',
    'In my fair an unbiased opinion the internet on campus sucks and is hard to work with (it keeps asking you to login every few minutes). Campus administration is slow and the IT department is hardly open.'
  ],
  'Universiti Utara Malaysia' => [
    'My degree life was being spent at this uni, thank you UUM for making me having a great journey',
    'The best place to pursue your studies in the serene environment assisted by excellent educators.',
    'It is my second International academic journey. I find it distinctive from previous. It`s an excellent experience.',
    'Nice campus, beautiful environment but low quality education.'
  ],
  'Sunway University' => [
    'An actual horrendous environment to study in, students plagiarising left and right with the teachers allowing it and in fact, encouraging academic dishonesty. Tried reporting said lecturers before with video proof of academic malpractice but the school department straight up told me that reporting teachers were not allowed. A true cesspool of AI disguising as professionals. 0/10 would never come back again.',
    'I am Sunway University PhD graduate. I have done my PhD in Biology. Sunway is my dream place. Everything is perfect, all the faculty members are highly skilled and enegetic. The staff is fully cooperative and vibrent. The facilities are more than enough for a PhD studies. I enjoyed the university life and missing those unforgetable moments. In fact, I love Sunway.',
    'The most happening campus!',
    'The cost of study is really higher than other universities of Malaysia. However the service, education system, faculties and environment are world class. Highly recommended for pursuing a degree where you make your smooth career path.'
  ],
  'Taylors University' => [
    'The education is extremely bad. Lecturers are mostly untrained and lacked experience. The way majority of how they teach is by reading directly from the slides with no effort in attempting to elaborate the materials, and sometimes topics are skipped for idk what reason. One of my former lecturer was literally a recently enrolled part time master`s degree student (in terms of qualification, he only had bachelor`s essentially), which you can imagine how incompetent he was at teaching us students regarding the module that he was teaching. If you ask any other foundation student from different departments (business, arts, engineering, etc), they will say the exact same thing (topics are for some reason skipped, low effort teaching such as reading from the slides with no elaboration, and etc)',
    'Campus life is god horrible, especially in 2022. A LOT of shops are closed in Syopz Mall. There are no more Tealive, no more Mamak, no more Apple store, no more old town white coffee, no more bakery, and the whole bottom floor of Syopz Mall is COMPLETELY CLOSED DOWN/BANKRUPTED. Honestly I have no idea how would students in 2022+ are gonna survive with such a limited selection of eateries. You might as well choose Sunway University - as it has a mall connected via canopy walk/bridge and MORE eateries both in AND outside (MORE than 30 hawker stalls!!!) campus  - if you prioritize on a good campus life, cause it`s literally 1-2km away from Taylor`s. I would literally would`ve chosen to sacrifice the whole lake to create more eateries. The lake literally serves no purpose other than being an eye candy, which again in my opinion, eye candy is useless if I`m dying from hunger.',
    'Overall an above average teaching quality (depending on program).
    Top notch facilities with a stunning lake, wish they could add a bridge connecting both ends as walking distance between both ends are quite far.',
    'Bad food, good ambiance. You can feel the stress during submission period. Very realistic university experience. Parking is usually very full, and lifts are very slow.'
  ],
  'Management and Science University' => [
    'Please don`t study here. The lecturers are the best, but their management part is the worst. Some of the staffs are even rude.',
    'Excellent university to complete your tertiary education. I completed my PhD in Management here. They have excellent Professors to guide through your thesis. Excellent environment for students, very cosy,  with lots of shops and restaurants.',
    'The residence needs improvement as I came and it wasn`t clean, it was supposed to be clean before I arrive....',
    'Good campus, good facility'
  ],
  'National University of Singapore' => [
    'Best research & education university in Asia. Student campus is so good. You will learn your life skills here.',
    'Very nice campus. Full of green. Well connected by MRT and Buses. There are free shuttle buses to get around inside . Lot of eateries and all facilities available.

    I am from computing department. awesome place to learn, almost like a second house',
    'The school turns out great researchers and book smarts employees.

    However, in general, it does not churn out well-rounded individuals.

    For some reason, alumnis of NUS do not perform well in large social environment where people to people social skills are required.',
    'NUS provides you with great infrastructures and facilities. There are college bus which you could take to travel between faculties. Went to U-Town to eat at the foodcourt. The variety of the foods there are quite broad. You could find Korean, Indian, Japanese, Chinese and other foods. The price is cheap for students and non-students. There is also a small swimming pool in the U-Town

    In the USP (I`m not really sure whether it`s called USP because I found it in between halls near the U-Town) cafeteria/foodcourt area, there is also a halal food section. This canteen is only for NUS students since you need your student card to get the foods there.'
  ],
  'Nanyang Technological University' => [
    'Although there is still room for improvement for some professor, the overall study experience there is excellent. New building also very beautiful. Point deducted due to 1) Sometimes the library really noisy, many students like to make loud discussion there; 2) No MRT access (But if there were, maybe, in the future, who knows, it might become very crowed....)',
    'NTU could have spent more money on providing a more reliable campus bus service or ensuring the module selection website works due to the "first come first serve" system. But instead the money went into funding a fancy looking building and a garden.

    Food prices are also too high for an institution and lack of Halal food',
    'Really nice campus. Great facilities. Nice people.

    But if you`re studying engineering, be forewarned that most modules are conducted with online, pre-recorded video lectures as the primary means of learning. It`s hardly effective, nor what one would expect when signing up for a degree course at a leading local university.',
    'It`s a great university with lots of things going around. But be competitive minded otherwise it`s going to be tough like hell.'
  ],
  'Singapore Management University' => [
    'The Good
    1. Because of the intensity of the projects and because I am a perfectionist, I stayed long hours at school doing projects with friends. Because of the time we spent together, both the duration and the stress that we endured, most of my project friends are friends who last. Not that we have time to hang out with each other all the time, but we are the type of friends that randomly whatsapp each other in a while to check on others. We pass on opportunities that we think others will be interested. We come together again to participate in case challenges, form a startup (and it was adopted by the school and we just become advisors of the sort), travel and other stuffs together. I know it is not the type of friends who will hang out and who you will whine and gossip with. But they are great friends, indeed.

    2. The people here are amazing. In SIS, the guys take projects onto an amazing eye-opening level. My Data Mining Prof even commented that most of our projects are beyond the scale of the thousands of dollars projects in the real life. And because we have time and are willing to explore new technology, the stuffs that they can do is truly awesome. I know a few who found startups and avoid the beaten path of becoming a tech person at banks. Their take on life is different. I am inspired and motivated to learn even more to stay on top of my game.

    3. Most Profs are very down to earth and helpful. They dont try to hide behind books. They constantly push to adopt new technologies. They try hard to let us know the standards are high but they are there to help. They try really really hard to let us know they are our friends and they want us to excel. That helps a lot, especially for modules that I am scared of and/ or have no interest in.

    The Bad
    1. The learning curve for SIS students is so damn high. I have had exams when they ask you to properly implement the solution when the modules only teach you the theory behind designing it. You are always expected to reach the impossibly high standards. The Profs seem like they do not have enough time to teach us that much coding in class, so they dedicate all their time to the design theory and assume we know how to implement the actual solution. It is tough, but after a while, I guess it teaches me to be an independent learner. Nonetheless, at least for some of the modules, my GPA is greatly affected.

    2. After a while (in my case, exactly 3 semesters), I have a group of close friends. We kind of bid for classes together to be in the same group. It is comforting because you know other people`s working style, you know they`ll commit and you know you can trust the quality of their work. But then again, after a while, it gets boring. I dont get to know other people on a deeper level anymore. And SIS is very small, if you piss off your first group by being the bossy one or the slack one, well, I guess gossip travels very fast and that label will stick for quite some time.

    3. THE WORKLOAD IS JUST CRAZY. Projects, meetings, CCA commitments, quiz, exams. It sounds like any other college student. But it is really crazy. I am grateful if I have more than 4 hours to sleep any given day.


    Well that is just my two cents. All in all, I dont regret making SMU my first choice.',
    'Hmm it`s tiring and frustrating at times. The competitiveness, the grading system, the endless projects, assignments, mid-terms and finals. But the exhaustion is also what bonds all SMU students together, when you find yourself in an awkward situation with a peer and don`t know what to say, the safest bet is to go "Man I`ve so much work to do!" Then, the conversation will probably flow from there, lo and behold a (mind my french) bitching session has started and your instantly (for that moment at least) bonded and awkward moment have successfully been passed. Plus, the craziness also forces you to either learn to manage your time or die trying. Or well you can always opt for failing, which well, kind off defeats the purpose of going to school if your not going to try at all (trying then failing is completely different from failing without trying!)

    Sometimes it can also be very uncomfortable and disconcerting because you get thrown into courses you`ve absolutely no skill in. I am an IT idiot, I`m the type that prefers all things in the traditional technological free way, I`m even somewhat averse to texting. But I get thrown into a Computer Analysis Tool class (well its basically an excel class), I suffered, badly, barely survived, barely passed, no surprises there. But being placed out of your comfort zones is not necessarily a bad thing. You do learn valuable skills but more than the skills, you meet students from different faculties, you are forced to mingle and sometimes work with them closely, you network and you learn and you share. You may end up hating each other, but you will no doubt have learned a thing or two from the other (whether you admit it or not).

    The CCA-obsessed culture is another hidden gem of SMU. To outsiders they sometimes do not understand our "obsession" with it. But to us, that`s where our friends are, that`s where we get to escape from the stress of studying and focus on something we are truly passionate about, it is also there that we get hands-on practice in management, in communication, peer-learning and discipline, among many other things. I was in and still am in 2 myself, though am sort off taking a short break from both, was fully devoted to both the year before and well, it did get a bit draining. It was draining, but if someone asked me if I`d do it again or if i regretted making the choice I did last year, I would say yes and no respectively. It was tiring, emotionally, mentally and physically, I cried so much and got frustrated so many times, but i learned a lot too :) I definitely grew from the experience and i wouldn`t exchange it for anything else (though ok there were some bad and stupid calls i made in the process which i wince at and wished i could have done or chosen better, but think "Overall" heh)

    However the downside of being an undergraduate in SMU is that we sometimes forget about our family, we are so focused on the hecticness of Uni that we forget all else. So engrossed with our youth, our friends, our school work, our internships, that we sometimes completely forget or push aside family time. In the pass 3 years, I`ve faced many situations in which i ended up sacrifincing family time, but after a tragedy happened in my family. I faced a rude awakening and realised just how important family is, and how much time I`ve missed with them, so this year, I`ve been trying my best to gain some lost time, and spend more time with them.

    I still loved and still do love my experience as an undergraduate in SMU, the key is balance, choose and pick your priorities and balance them as best as you can. We have to remind ourselves that we can`t have it all, there`s just so much that we can do in the limited time we`re given, and to truly experience and enjoy something, choices and sacrifices need to be made. Decide what kind of uni life you want, and start learning to balance! Though remember, sleep really is an option here in SMU ;)',
    'Getting drunk at Ice Cold in the afternoon
    Attending classes after that made class participation more palatable
    The need to stand out made me realise quickly that even though you can bullshit well, nobody likes you (they just pretend that they do)
    Traveling to town is definitely more convenient
    I enjoyed the afternoons hanging out at the coffee shop on Armenian Street before they closed it down
    There were genuinely some interesting times bonding with group mates late into the night rushing for that presentation in the morning
    I wasn`t one of those grade-obsessed students but I learnt a lot trying to juggle a business, school projects, running a CCA, family, love, friends and homework during my time in school (did not sleep very much)
    Seriously people should get over the whole idea of being like at Wharton and fighting for that JPM, DB, MS blah internship. Find your voice!
    Then again, school and life, in general, is what you make out of it. If you wanna be another cog in the machine and run the rat race with your frenemies, go ahead',
    'SMU`s selection of top-notch infrastructure, collaborative academic style and diversity among students contributed greatly to my learning and development. It equipped with key skills that have helped me make a smooth transition into my career.'
  ],
  'Singapore University of Social Sciences' => [
    'Most of the lecturers are good. The school environment is moderate, as there are not enough canteens to accommodate the school population (shared with SIM Global). The school`s communication with the students can be improved because regarding some issues like paperwork for eportfolio and work attachment, there is some confusion among students.',
    'Many (not all) lecturers encountered are only part-time or associate lecturers and are not committed to help the students. Facilities are also not helpful and sufficient to meet students’ needs.

    Feedback given to the school are not rectified, no actions are taken to improve.',
    'As a year 4 student, the resentment my peers and I have is that after the change to SUSS, the school suddenly wanted to be tryhard and to fight against the main local unis. In a single semester, the way they grade became much stricter. Abit too jarring.

    We dislike the new name of our uni, it sounds bloody weird, and we thought we joined a business uni, not a social sciences uni. Until now many people still dont know what is SUSS, unless we say SIM or UniSIM.

    So, based on my experience here I will list some pros and cons to help you decide:

    PROS:

    Self-study emphasis means only 3 hr per module per week. Average 3 modules per term. Except for project/exam periods, lots of free time to enjoy college life! Savour before we work till death.

    Course grades quite nicely split over several components in my opinion. There are easy online mcq quizzes that carry 6-10% overall grade, and class participation isnt very hard to get either (can easily get 7 to 10%).

    SIM is a compact school, really easy to get around. SUSS is a single block, has a starbucks downstairs, next to bus stop and carpark.

    Compulsory 6 months internship means even the laziest students have something nice on their resume.

    School has partnerships with big companies. Its not that hard to intern with banks and big 4 audit firms. They source all this for you.

    Compulsory overseas experience is a good excuse for holiday with friends, and can also learn things. SUSS sources for you, great service.

    Take night classes with part time students if you want to chill.

    The subjects I learnt felt helpful and relevant. I made much use of them during internship, and my employer certainly didnt regret getting SUSS student. You will learn things here, self study or otherwise.

    Local uni branding but not as stress as other local unis. Industry recognized.

    No module bidding nonsense like in some other unis. Theres recommended mods to take each sem, just follow and dont think so much unless you have special circumstances.

    A few modules have no exams but a project instead. Really easy if you aren`t aiming for A.

    CONS:

    Wtf pay so much and expected to self study before coming to class mainly for activities. Sometimes we just wanna be taught directly.

    Compulsory 2 years of community service is waste of time, but you can easily game this system. I personally got away with just 1 year. Can use to pad resume.

    Overseas experience is on your own dime. Expensive!

    Regular joe on the street has no idea what is SUSS. Annoying to keep explaining. I just say I am from SIM now. Employers will know, thankfully.

    If you are a smoker, the official smoking corner is abit troublesome to get to. It used to be much closer. Staircase will suffice if lazy, but its the wrong thing to do.

    Food sucks in my opinion. Really average. My poly had vastly superior food.

    Compulsory 1 or 2 classes with part time students can really fuck your grades up if you end up with the bad students. I dont blame them, its really hard to put in study effort after working all day.

    I dont really care about CCAs, last I checked 2 years ago there were almost none. But I think even now theres still not many. The only clubs I hear students talk about are of the liver destroying variety. So... your typical uni students I guess?

    Although course grades has many components, it still mainly comes down to exams. Fail the paper, fail the whole mod. Students who aren`t good at exams suffer here.

    My conclusion, if you must go to a local uni for 4 years, SUSS is a good choice. Its less torturous than traditional unis, but you can definitely still learn what is needed. You will still have periods of stress. Degree is recognized, you will definitely have all available career options if you can get the grades. Think of SUSS as local uni "lite".

    But if you just want a job, and doesn`t have to be prestigious or high flyer, go for SIM GE 2 to 3 years degree. Most of my friends are from SIM and all found jobs in good companies with pay on par with local uni grads. Save your time and effort, just go SIM.',
    'Currently I`m my first sem at SUSS and I have to say, the curriculum really sucks. I’m literally walking around like a headless chicken. I do follow everything that’s said in class and when the assignment comes up, it’s nothing like what’s taught. And when I ask my lecturer questions, he just says he cannot reveal anything and I’m like ??? I’m not asking for the answer key?? But I don’t know, everyone in my class seems to have nothing to say about it, are all universities like this? I was from SP and tbh, SP was golden in terms of like, teaching and curriculum etc.'
  ],
  'Singapore University of Technology and Design' => [
    'Not an easy school to study in but really skillful. They maybe a new university, but there are also alot of dropouts in the first year, even more than NTU or NUS. The students there really learn on the hands-on and thinking skills which ultimately make most of them really smart and good workers. This are all my 2 cents from interacting with a dozen of student.',
    'When I first accepted enrollment, it was for their curriculum approach and their scholarship.

    Today, if you want to join, these should be the main factors:

    Hands-on Experience. Unlike other universities that follow the traditional curriculum of lectures and classes, SUTD does this with an imbued design methodology - meaning to say, almost every module you do, there is at least 1 project, & not just for Design modules.
    Opportunities. While other universities have well established programs and companies, SUTD has a crazy vibrant innovation culture. Want to do projects outside of curriculum? Join a maker club (we have plenty); join a research program get funding; join a competition; pitch a start-up (at least 3 startup programmes with funding). You literally walk around SUTD and you can spot projects here and there done by different people.
    This is compared to other universities where you have to be of a certain pedigree or scholarship to do research projects or get funding.
    Maker`s paradise. We have the largest fabrication lab in Asia? And its free to use for students (with limits of course). There’s 3D printers, laser cutters, water jet, metal works, etcera. What you make is only limited by your creativity and drive (and time).
    Multi-discipline. Unlike other universities, SUTD only has 4 main pillars - Computer Science, Architecture, Systems Engineering or Engineering. And so far each cohort is <500. With a common 1st year, you learn to intermingle and work with interdisciplinary people, and projects become much more dynamic. In other universities, you barely get to work with other majors except maybe hall.
    HASS (humanities & social arts). Tired of doing an engineering degree? Don’t worry, 1/4 of your term modules will be HASS. You can choose from modules like ‘The many lives of Satan’, ‘Ethics of Leadership’ to ‘Psychology’. This really help foster a liberal arts culture in SUTD.
    Scholarship. No kidding. (but you better maintain your GPA)
    Well, it is only fair to provide the flip side, so here are factors why you should NOT join:

    Common 1st Year. While this is great in promoting multi-disciplinary collaboration and fostering an understanding and appreciation of different disciplines, most feel that 3 common terms is too long. For JC students this meant restudying JC materials (and more), for Poly students this meant studying much more, and especially for Architecture prospect students this meant doing 3 terms of largely unrelated modules.
    Looking for a mainly artistic/design curriculum. (or at least for now, things might change) Your best bet is ADM at NTU. While SUTD has ‘Design’ in its name and motto, don’t make the mistake thinking it is a design institute. Predominantly, SUTD is an engineering school - design is a principle and approach deeply imbued into the 4 main pillars. You won’t get to take modules like fine arts or typography (which honestly they should have), at least for now.
    I heard they are looking into establishing a liberal arts related major though.
    Fast-paced. A double-sided coin. You get 1 year of common studies and ~2.5 years of major. Compare this to 4 years in other universities - that’s alot of content in a tight time. Depending on what you take, you might need to play catch up vs other peers. But you have stronger design & project portfolios.
    Namesake. In SUTD, it is really your own ball game - what you achieve is fully dependent on what you do. You can have great club activities, many research projects and competitions, or have nothing. Here, you better prepare to do much more and work harder - because companies are going to look at your achievement and not your university.
    Hall Life? For now, the new Hall system just began - so this can definitely change. But currently, if you are looking for hall experience like NUS or NTU, you won’t find them here. While there are floor activities and houses, the bond and dedication to your floor is much less than other universities. You would focus on club activities much more instead. Once again, this is for now - things are looking to change.',
    'I had the best undergraduate life I could possibly have here with a good mix of learning, growing and socialising. The fabrication lab here is better than MIT as visited both places. The amount of resources you get is above when compared to an average undergraduate degree. The lessons gained beyond the textbooks will last me a lifetime. Unfortunately food is not the best, we need to solve that.'
  ]
}

# for each user, go through the educations list
# for each education, get the university id
# use that university id to add to review
# add user_id to review user

users.each do |user|
  user.educations.each do |education|
    reputabilty_rating = rand(1..5)
    education_quality_rating = rand(1..5)
    campus_facilities_accom_rating = rand(1..5)
    course_difficulty_rating = rand(1..5)
    social_element_rating = rand(1..5)
    value_for_money_rating = rand(1..5)
    safety_rating = rand(1..5)
    career_services_rating = rand(1..5)
    # comment =
    curr_review = Review.new(reputabilty_rating:, education_quality_rating:, campus_facilities_accom_rating:, course_difficulty_rating:, social_element_rating:, value_for_money_rating:, safety_rating:, career_services_rating:)
    curr_review.user = user
    curr_review.university = education.university
    unless reviews[education.university.name].blank?
      review = reviews[education.university.name].sample
      curr_review.comment = review
      reviews[education.university.name].delete("review")
      curr_review.save!
    end
  end
end

# universities.each do |university|
#   reviews[university.name].each do |review|
#     reputabilty_rating = rand(1..5)
#     education_quality_rating = rand(1..5)
#     campus_facilities_accom_rating = rand(1..5)
#     course_difficulty_rating = rand(1..5)
#     social_element_rating = rand(1..5)
#     value_for_money_rating = rand(1..5)
#     safety_rating = rand(1..5)
#     career_services_rating = rand(1..5)
#     comment = review
#     curr_review = Review.new(reputabilty_rating:, education_quality_rating:, campus_facilities_accom_rating:, course_difficulty_rating:, social_element_rating:, value_for_money_rating:, safety_rating:, career_services_rating:, comment:)
#     curr_review.user = User.all.sample
#     curr_review.university = university
#     curr_review.save!
#   end
# end
