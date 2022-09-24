# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"

Message.destroy_all
Chatroom.destroy_all
Vote.destroy_all
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
    image: 'https://www.unimelb.edu.au/__data/assets/image/0005/2749640/varieties/medium.jpg',
    image2: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Melbourne_University_grand_building.jpg/220px-Melbourne_University_grand_building.jpg',
    image3: 'https://images.shiksha.com/mediadata/images/1539253667php1AcBOm.jpeg'
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
    image: 'https://apru.org/wp-content/uploads/2021/12/ANU.jpeg',
    image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ2GiYhAmLV5vZ7XGnFHPD3XdaZLeOnsyqpQ&usqp=CAU',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_cdlWzEF4gFH0ywCxgbdGKmphawAqko-o-Q&usqp=CAU'
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
    image: 'https://www.easyuni.sg/media/institution/photo/2019/07/15/UQ_1_Wide.jpg.600x400_q85.jpg',
    image2: 'https://upload.wikimedia.org/wikipedia/commons/3/39/Steele_Building_surrounding_the_Great_Court%2C_University_of_Queensland_01.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhoe-PQxSC4jREuDnyyR5JTte23lK4TrgorA&usqp=CAU'
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
    image: 'https://www.sydney.edu.au/content/dam/corporate/images/architecture/quadrangle/high-quad-shot2.jpg',
    image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCgjZzuE9R-5LjDTU7duAOYxiyuZVZYjeU6g&usqp=CAU',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhoe-PQxSC4jREuDnyyR5JTte23lK4TrgorA&usqp=CAU'
  },
  'University of Newcastle' => {
    description: 'Guided by our values of excellence, equity, sustainability and engagement, the University of Newcastle has built a strong reputation as a world-leading university making an impact within our own regions, in Australia and across the globe. We’re ranked number one in the world for Partnering for a Sustainable Future (Times Higher Education Impact Rankings 2021).  Across our campuses in Newcastle, the Central Coast, Sydney and Singapore, the University of Newcastle enrols more than 37,000 students from diverse backgrounds, with a focus on equity and developing our next generation of socially-oriented leaders, entrepreneurs and innovators.    Our University has long been known as a champion of innovative approaches to teaching and learning. Many of our courses are designed to integrate theory with practice, offering rich opportunities for real-life, hands-on experiences.     We are a research-intensive university and proud of the great things we have achieved in collaboration with our partners in industry, business, government and the community here and around the world. Our sights are set firmly on the future, as we work hard to build our research capacity and maintain our position as a competitive destination for the world’s best researchers and global innovation leaders.',
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
    image: 'https://www.newcastle.edu.au/__data/assets/image/0009/695592/home-hero-nuspace.jpg',
    image2: 'https://images1.content-gbl.com/commimg/myhotcourses/institution/CH/section/myhc_324012.jpg',
    image3: 'https://talloiresnetwork.tufts.edu/wp-content/uploads/talnet__1284.jpg'
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
    logo: 'https://coursera-university-assets.s3.amazonaws.com/fa/e5fc20724e11e5bf36bff635f1f3bb/UWA-Full-Ver-CMYK3.png',
    image: 'https://www.studyinternational.com/wp-content/uploads/2020/09/shutterstock_544192189_University-of-Western-Australia-1.jpg',
    image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUnr1egjso0E6pCS_ZSAlO2kxBLwgmHlRCyA&usqp=CAU',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmlnKQDqb4LbaGPSgZ-MIbsVc-7xRXyyim8A&usqp=CAU'
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
    logo: 'https://seekvectorlogo.com/wp-content/uploads/2018/01/the-university-of-adelaide-vector-logo-small.png',
    image: 'https://www.adelaide.edu.au/campuses/sites/default/files/styles/ua_image_full_width/public/media/images/2020-03/nth-tce-campus-08063_uoa-1440x500.jpg?h=57013b68&itok=v2e3CqAR',
    image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUoKUDTjhN5sbT5NbxaNby_lzPZb66p8GqMQ&usqp=CAU',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgW15tQvCAlAhKfuthumNVq9prQ11weMr4vQ&usqp=CAU'
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
    image: 'https://www.etawau.com/edu/UniversitiesPublic/UM/UM_01b.jpg',
    image2: 'https://apicms.thestar.com.my/uploads/images/2021/04/11/1109035.jpg',
    image3: 'https://onecms-res.cloudinary.com/image/upload/s--UVaEzK0s--/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/universiti-malaya.jpg?itok=hcj5orbZ'
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
    image: 'https://assets.nst.com.my/images/articles/ukm50th_1589945315.jpg',
    image2: 'https://media.glassdoor.com/l/557287/universiti-kebangsaan-malaysia-office.jpg',
    image3: 'https://studymalaysiainfo.com/wp-content/uploads/2016/11/University-Kebangsaan-Malaysia-UKM.png'
  },
  'Universiti Putra Malaysia' => {
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
    image: 'http://blog.fsi.com.my/wp-content/uploads/2-UPM.jpg',
    image2: 'https://selangor.travel/wp-content/uploads/2019/09/Universiti_Putra_Malaysia_Faculty_of_Agriculture_Tourism_Selangor.jpg',
    image3: 'https://selangor.travel/wp-content/uploads/2019/09/Universiti_Putra_Malaysia_Faculty_of_Agriculture_Tourism_Selangor.jpg'
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
    image: 'https://s3.ap-south-1.amazonaws.com/gotouniv/cover_photo/4057/cover_photo_1500X500.jpeg',
    image2: 'https://www.easyuni.sg/media/institution/photo/2014/04/17/main_campus_3.bmp.1150x500_q85_crop.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-pE_JHWrHZ_yHAvEXdrhJn7lsM7R-1dFaAg&usqp=CAU'
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
    image: 'https://www.easyuni.sg/media/institution/photo/2015/12/30/222.jpg.600x400_q85.jpg',
    image2: 'https://shahsimages.files.wordpress.com/2018/10/img_20181002_091136-1.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6jaygG77e46ohSfM0V14mrqk5-cLDKiMHfg&usqp=CAU'
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
    image: 'https://www.mysuncampus.eu/sites/default/files/2020-04/UUM.jpg',
    image2: 'https://www.mysuncampus.eu/sites/default/files/2020-04/Dewan%20MAS.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVZ575fOanl11W6p0YAewSowPPgoQUlTw07Q&usqp=CAU'
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
    image: 'https://easyuni.com/media/articles/2022/03/10/resized_Sunway_University_Facebook._Sunway_University_Campus.jpg',
    image2: 'https://keystoneacademic-res.cloudinary.com/image/upload/q_auto,f_auto,w_743,c_limit/element/14/144415_Sun-U_morningNew.jpg',
    image3: 'https://image-tc.galaxy.tf/wijpeg-272v4btfu73ioz7soy9ta03d7/dsc-0281_wide.jpg?crop=0%2C53%2C1001%2C563&width=1440'
  },
  'Taylors University' => {
    description: 'Taylor’s University is the No. 1 private university in Malaysia and Southeast Asia, ranked #332 in the QS World University Rankings 2022. This ranking places the university among the top 1.1% of the most influential institutions globally.',
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
    image: 'https://live.staticflickr.com/2457/5841190957_02df6b75d7_b.jpg',
    image2: 'https://portals.taylors.edu.my/portal/images/login/Backdrop.jpg',
    image3: 'https://www.taylor.edu/dA/8f41512d40/why-taylor.webp'
  },
  'Management and Science University' => {
    description: 'Management & Science University (MSU) is one of Malaysia’s top universities with a focus on developing and delivering quality human capital in national and global critical- need areas; among these are Medicine, Health Sciences, Pharmacy, Information Sciences, and Engineering, besides Business Management & Professional Studies, Education & Social Sciences, Hospitality & Culinary, and Music & Fashion.   The moment you step into the MSU campus, you will experience the dynamic cultural diversity that is felt all around. Our students bring life into the overall vibrancy on site, with their combination of personalities and lifestyles. Their different racial or academic backgrounds and experiences, add unique features of the university, where individual growth and communication are leveraged.',
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
    image: 'https://www.easyuni.sg/media/institution/photo/2016/03/14/A_VIEW.jpg.600x400_q85.jpg',
    image2: 'https://fastly.4sqi.net/img/general/600x600/kWQZSHgXi2P6j2p_1G3moJYa1zarIW755b3_1GXTxYA.jpg',
    image3: 'https://fastly.4sqi.net/img/general/600x600/29922506_U2ZBCzaaJaFS64_6RZZ3iLidzljEmUXjGgD9nCk3gEI.jpg'
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
    image: 'https://www.quantumlah.org/administration/ckeditor/kcfinder/upload/images/utown.jpg',
    image2: 'https://nus.edu.sg/osa/images/librariesprovider9/resources/usc.jpg?sfvrsn=619dcdfd_3',
    image3: 'https://cde.nus.edu.sg/wp-content/uploads/2021/08/article-image-2048x1152-1.png'
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
    image: 'https://www.latrobe.edu.au/students/opportunities/exchange/partners/images/asia/Nanyang-Technological-University.jpg/1680.jpg',
    image2: 'https://media.nature.com/lw800/magazine-assets/d41586-019-03179-y/d41586-019-03179-y_17294252.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpMqRr0wVysFPz28nnjabr5vLxigny4H6nRg&usqp=CAU'
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
    logo: 'https://i.pinimg.com/736x/84/fa/5a/84fa5a172ba830d9a64619194056bee2.jpg',
    image: 'https://static1.straitstimes.com.sg/s3fs-public/styles/large30x20/public/articles/2018/08/27/bp_smu1_270818_90.jpg?VersionId=cerYEVfOCTfAcx9FK.7FgTgDiYKYM5Pk',
    image2: 'https://iafor.org/wp-content/uploads/2019/09/IAFOR-partnership-with-Singapore-Management-University-SMU.jpg',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyiYcHS6lAV0WF210HQNzflsOH62mkpViEbg&usqp=CAU'
  },
  'Singapore University of Social Sciences' => {
    description: 'SUSS is a university with a rich heritage in inspiring lifelong education, and transforming society through applied social sciences. We develop students and alumni to be work-ready and work-adaptive, aspiring to reach their full potential, through our 3H’s education philosophy – "Head" for professional competency with applied knowledge, "Heart" for social awareness to meet the needs of the society, and "Habit" for passion towards lifelong learning.',
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
    logo: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/SUSS_logo.svg/1200px-SUSS_logo.svg.png',
    image: 'https://www.suss.edu.sg/images/default-source/content/comm/we-are-15/timeline/Mar_2017.jpg',
    image2: 'https://orientation.suss.edu.sg/images/default-source/default-album/home-welcome.jpg',
    image3: 'https://orientation.suss.edu.sg/images/default-source/default-album/banner_jumbotron.jpg'
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
    image: 'https://images.squarespace-cdn.com/content/v1/52c27120e4b03b18ff1956cc/1545998002929-LQ7KF4VJUFCM9V0O7TQ6/UN+Studio_Singapore+University+of+Technology+and+Design+SUTD_Andrew+Pham+56.jpg?format=2500w',
    image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1HO9xchgVhZqi35VGJ-vSpODndk0qIaQuCw&usqp=CAU',
    image3: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT73J04Gt6sX8oFLtdWKngyuk8w_h2SamNxOQ&usqp=CAU'
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
  image2 = detail[:image2]
  image3 = detail[:image3]
  University.create(name:, description:, address:, city:, country:, url:, ranking:, domestic_course_fee:, international_course_fee:, application_deadline:, student_count:, dorm:, email_domain:, logo:, image:, image2:, image3:)
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

puts "Creating Users (will take ~5 minutes)"

50.times do |i|
  random_num = rand(1..38)
  # avatar = File.open("app/assets/images/avatars/avatar#{random_num}.jpg")
  curr_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{i}@gmail.com",
    password: "password",
    confirmed_at: Time.now
  )
  # curr_user.photo.attach(io: avatar, filename: "avatar#{random_num}.jpg")
  curr_user.save
end

users = User.all

puts "Creating Departments"

departments = { "Arts and Social Sciences" => { courses: ["English Literature", "History", "Music", "Philosophy", "Theatre and Performance", "History", "South-East Asian Studies", "Geography", "Social Work", "Sociology"] },
                "Business" => { courses: ["Accountancy", "Business Administration", "Economics", "Finance"] },
                "Computing" => { courses: ["Computer Science", "Information Security", "Information Systems", "Business Analytics"] },
                "Dentistry & Medicine" => { courses: ["Dentistry", "Medicine", "Nursing"] },
                "Design" => { courses: ["Architecture", "Mass Communications", "Digital Media"] },
                "Public Policy" => { courses: ["Journalism", "Political Sciences", "Public Affairs"] },
                "Science & Engineering" => { courses: ["Biomedical Engineering", "Chemical Engineering", "Civil Engineering", "Electrical Engineering", "Environmental Engineering", "Materials Science & Engineering", "Mathematics", "Physics"] } }

departments.each do |department, detail|
  name =  department
  courses = detail[:courses]
  Department.create(name:, courses:)
end


puts "Creating Education"

users.size.times do |i|
  2.times do |j|
    start_date = Faker::Date.between(from: Date.today - 6.year, to: Date.today)
    end_date = start_date + Faker::Date.between(from: 1.day, to: 31.day) + Faker::Date.between(from: 1.month, to: 12.month) + Faker::Date.between(from: 1.year, to: 5.year)
    academic_degree = ['Diploma', "Bachelor's Degree"][j]
    curr_education = Education.new(start_date:, end_date:, academic_degree:)
    curr_education.user = users[i]
    # if j.zero?
    #   curr_education.university = University.all.sample
    #   puts "blank"
    # else
    #   debugger
    #   first_uni = curr_education.user.educations[0].university.name
    #   curr_education.university = University.where.not(name: first_uni).sample
    #   puts "second"
    # end
    sg_uni = University.where(country: "Singapore")
    au_uni = University.where(country: "Australia")
    my_uni = University.where(country: "Malaysia")
    random_uni = [sg_uni, sg_uni, sg_uni, au_uni, au_uni, my_uni].flatten
    curr_education.university = random_uni.sample
    curr_education.university_email = "#{curr_education.user.first_name.downcase}.#{curr_education.user.last_name.downcase}#{curr_education.university.email_domain}"
    curr_education.department = Department.all.sample
    curr_education.course = curr_education.department.courses.sample
    curr_education.save!
    puts curr_education
    puts curr_education.department
    puts curr_education.course
    debugger
  end
end

puts "Creating Reviews"

reviews = {
  'The University of Melbourne' => {
    comment: ['One of the best University in the world. Undoubtedly it is a beautiful, green and comfortable place to enjoy your studying.',
    'Visited the uni today to say good bye after graduating from this lovely place and to take photos for the future. The University offers an amazing services for the students and many courses. My teachers were encouraging and considerate. Proud to be graduated from Unimelb.',
    'You have to work hard on the course yourself with not much help from school, you need to be able to teach yourself. You also have to be very self-discipline and reduce your entertainment. You also have to pay a lot of money if u are not australian. If you are ok with that the school is good because there are many interesting courses.',
    'Has it’s aestethics, although if you want a place here you must either be:
    1) Rich
    2) International student
    3) Ridiculously smart
    Other then that, don’t waste your time here studying a degree that will take you 5 years to get when you could get it at any other university for 3 years of studying only. A great example is the Bachelor of Nursing that Melbourne University offers. For starters, it is a post graduate course which means you must do previous undergraduate studies before hand, whilst you could have direct entry into a Bachelor of nursing at any other institution. Also, as mentioned above, the University is catered to those students who come under the three options, it is so disappointing to see very little representation of students who come from a lower demographic background. It’s not the 18th century anymore!',
    'Worst uni ever. So many mistake made by school admin while enrollment. A lot of confused standards and discribe for study process such as paying your fees etc. No idea why this suck uni can be ranked so high with such stupid services.',
    'Great course, school and teachers. Not so keen on syndicate assignments, in the end I did them mostly by myself and submitted for the group. Never really saw the point, mostly the person who most wants a good mark carries the rest.',
    'High quality course content for the most part. Some subjects felt as hoc, and overall they were poorly integrated into the rest of the course. Poor communication from faculty to students, and bad organisation made the course more stressful than it needed to be. But on the whole, it gave us good training and preparation for teaching.'],
    'reputabilty rating' => [5, 4, 4, 2, 1, 4, 4],
    'education quality rating' => [5, 5, 5, 3, 2, 4, 3],
    'campus facilities accom rating' => [5, 4, 3, 3, 1, 4, 4],
    'course difficulty rating' => [4, 4, 5, 3, 2, 4, 4],
    'social element rating' => [4, 5, 3, 3, 2, 3, 4],
    'value for money rating' => [5, 4, 4, 2, 1, 4, 4],
    'safety rating' => [5, 4, 4, 3, 4, 4, 4],
    'career services rating' => [5, 5, 3, 2, 1, 3, 3]
  },
  'Australian National University' => {
    comment: ['Has spent almost 10 years in ANU, it is always a lovely place for work and study, really enjoyed the peaceful nature environment and the culture of the academics.',
    'I spend 3.5 years of my life at ANU to do my PhD and I absolutely loved it.
    Campus is phenomenal.
    There are many sport clubs.
    It is amongst the top universities not only in social sciences and philosophy but also is physics and data science globally.',
    'Degree mill, literally go to any other university',
    'Worst studying experience & service',
    'It is the best university to study International Affairs. Professors are knowledgeable about their fields; Staffs are helpful',
    'I finished my master degree in ANU this year. I felt like ANU is not responsible for coursework students since it is famous for researching. My friends and I would like to choose courses by ourselves but the receptionist in the CBE said we have to follow university plans to choose courses and we nearly burn out in the second and the third semester because of a huge amount of assignments. A lot of my friends got depressed because of the stressful study. The only good thing is I made friends with a lot of outstanding students.'],
    'reputabilty rating' => [5, 5, 2, 1, 5, 4],
    'education quality rating' => [4, 5, 2, 1, 5, 3],
    'campus facilities accom rating' => [5, 5, 3, 1, 5, 3],
    'course difficulty rating' => [4, 3, 4, 2, 4, 5],
    'social element rating' => [5, 4, 3, 1, 4, 5],
    'value for money rating' => [4, 5, 1, 1, 4, 3],
    'safety rating' => [5, 4, 4, 1, 4, 3],
    'career services rating' => [5, 4, 2, 2, 3, 1]
  },
  'The University of Queensland' => {
    comment: ['It is a Great university in Australia and is highly ranked on software engineering course. Also the culture of Australia is something that a person would like to explore. Job opportunities in Australia are really good and there is a huge demand of software and data science engineers in Australia',
    'Terrible University, didn’t have an origin kebabs on site. Would not spend another 40 thousand dollars at this venue again. Instead I prefer the much superior facilities at The Queensland University of Technology which does have an origin kebabs.',
    'Fantastic facilities for students, it’s such a treat to have well-maintained grounds and good equipment. The library is always clean, tidy and you can easily find quiet places to study.',
    'This is a university in Queensland. If you are looking to go to university in Queensland this place has your back. Nice trees and I hear some resident turkeys can tutor in horticulture.',
    'lovely university and wonderful experience',
    'Studying at UQ was a fantastic experience and opportunity. The quality of resources and the program was good and provided the required tools to work in the field of study.'],
    'reputabilty rating' => [5, 2, 4, 5, 4, 5],
    'education quality rating' => [5, 3, 4, 5, 4, 5],
    'campus facilities accom rating' => [5, 2, 5, 4, 4, 5],
    'course difficulty rating' => [3, 4, 3, 4, 4, 4],
    'social element rating' => [5, 2, 4, 4, 3, 5],
    'value for money rating' => [5, 1, 5, 4, 4, 4],
    'safety rating' => [5, 3, 4, 5, 4, 5],
    'career services rating' => [5, 2, 4, 4, 3, 4]
  },
  'University of Sydney' => {
    comment: ['One of the most prestigious universities in Australia with great history yet artistic and innovative at heart! Love thr broadwalk and this Quadrang view never gets old',
    'THE WORST UNIVERSITY I HAVE EVERY BEEN TO!!!!!
    1)TERRIBLY EXPENSIVE: apart from the ranking and recognition - really worth your money?
    2) INCREDIBLY SLOW AND TERRIBLE SERVICE - they posted my first student card but I never received it, have to complain via a call very badly to get my card. IT TOOK ME FOUR MONTHS TO GET MY FIRST STUDENT CARD!!!!!!!!!!!!!!! ARE YOU SURE YOU WANT TO WAIT FOR HOURS AND HOURS TO BE ANSWERED????!!!!! AND YOU’D BETTER BE CRYING OR WITH AN EXTREME EMOTION TO GET YOUR PROBLEM SOLVED.
    3) VERY VERY BUREAUCRATIC - why do you create so many extra steps that take so long and still not working well???! Because you have too much employees and insufficient work for them to do? Many times the website will just guides you from one page to another, it provides no answer to your questions, which forces you to call.
    TBH, I REGRET MY DECISION TO ACCEPT THEIR OFFER IN MY VERY FIRST SEMESTER, BUT FORTUNATELY, I’M GRADUATING SO I NO LONGER NEED TO SUFFER. LOL',
    'Trust me this is the best place in the world to study. Australia is the hub of study, environment is the best. but but.. this uni is quite expensive and requires a lot of effort in order to maintain your studies. if you are good at studies, which I was not. this is the place for you, make sure u check the fees before :)',
    'One star for their prestige and a few good people working here. But a good majority of them are unsupportive, and egotistical. I learnt nothing of relevance to actual work.',
    "Not very flexible subject choices in third year (was difficult to do any subjects from infectious diseases, medicine, immunology, couldn't major in Microbiology due to compulsory subjects). Best theory and practical experience was during honours year. Prior to this, hands on experience is broad and quite shallow. Academics involved with subjects where less students enrolled (less than 50) were generally better tailored, much more involved and greater learning experience compared to subjects with large student intakes.",
  "The course has provided me comprehensive knowledge on both accounting and commerce, besides, it is an efficient way to obtain two master degrees in a reasonable period of time. I was doing professional accounting and finance when I studied in the University of Sydney, enables me a better chance of getting various jobs in different systems. Overall, it was great experience studying in such a beautiful campus and I had awesome times spending there."],
    'reputabilty rating' => [4, 1, 5, 1, 4, 4],
    'education quality rating' => [5, 1, 4, 1, 4, 5],
    'campus facilities accom rating' => [5, 1, 4, 2, 4, 5],
    'course difficulty rating' => [2, 1, 3, 2, 4, 4],
    'social element rating' => [4, 1, 4, 3, 4, 4],
    'value for money rating' => [5, 1, 3, 1, 3, 4],
    'safety rating' => [5, 1, 4, 2, 4, 5],
    'career services rating' => [4, 1, 3, 1, 4, 4]
  },
  'University of Newcastle' => {
    comment: ['Not enough subject choices- too limited! Would love to study here but only has three subjects which is a real shame. Hopefully they improve soon.',
    'I came to this university after completing my degree in Sydney and moved from Sydney to come here. The problem with this university is that there is a huge problem with bullying across the campus which has also been noted in the media as well. I recall coming across Associate Professor Heather Sharp in the education faculty screaming during a lecture and going on about how she’s against multiculturalism. Considering most of the student body are international students, it was a ridiculous statement.',
    'This university does nothing to help me as an autistic and dyslexic person to actually learn or apply the content. The only "help" they offer is an extension on written assignments',
    'Great campus, but the problem is that there is no help for us international students. It would be good if there were more support and programs!',
    'Love my university experience! enjoyed every bit of my time here'],
    'reputabilty rating' => [3, 2, 3, 4, 4],
    'education quality rating' => [2, 2, 1, 4, 4],
    'campus facilities accom rating' => [4, 3, 4, 4, 4],
    'course difficulty rating' => [3, 3, 3, 4, 4],
    'social element rating' => [4, 3, 3, 3, 4],
    'value for money rating' => [2, 2, 1, 3, 5],
    'safety rating' => [5, 3, 4, 3, 3],
    'career services rating' => [3, 3, 2, 2, 3]
  },
  'The University of Western Australia' => {
    comment: ['The University I studied in, really a beautiful place, its modern yet quirkey with the rustic look. Very beautiful at night. Have loads of animals, can be sort of a tourist stop as the building itself is majestic. One of the better Universities in Perth, have a good education system, and everyone is friendly.',
    'These guys are so bad.
    Emails do not get sorted, they just kick you off without answering your questions.
    Their admission and covid team are USELESS,  no one responds properly. Even visiting the admissions office in person doesn’t help.
    They say "send us an email" which they cannot answer within their own time frame.
    Ridiculous.',
    'The experience is great, meet new people, make new friends as well as learning the latest information with associate scholar. Now more clubs than ever time join and have fun.',
    'Lovely environment not just focused on the facilities but also on the fauna and flora. The campus is simply amazing with a wide range of buildings for various subjects. Faultless.',
    "My life experience and academic skills have been enriched and improved a lot by studying in UWA. It shaped a better me, a stronger, tougher, and a more independent 'me'. All the students, teachers, staff and my Australian host are sooooo friendly! They encouraged and pushed me to dream big and work hard!
    The environment of Perth is unbelievable, I always think of the blue ocean, beach with great cafes, and the beautiful sunset after I back to China! Perth and Western Australia definitely worth to explore!
    Because of the lovely people and environment, I spent a sweet and fullest time in Perth! I believe my experience in UWA & Perth is one of my best memories of my whole life! I will treasure them all the time!
    Thanks, UWA & Perth!
    Missing you as always!",
    "I stuided for a full Year in a Study Abroad programme from Brazil.
    I found the installations to be Fantastic at UWA, as well as the Professors and the hole Team from this University.

    I just felt very welcomed in there, since we had an Orientation Week wich allowed me to get to know the Campus and gave me tips in subjects that went beyond the University, such as 'How to find a residence', besides the welcome Parties wich helped to get to know a wide virety of students.

    I would surely, if I had a chance, have another experience at UWA.

    Just Fantastic. :)"],
    'reputabilty rating' => [5, 3, 4, 4, 5, 5],
    'education quality rating' => [5, 3, 4, 3, 4, 5],
    'campus facilities accom rating' => [5, 4, 4, 5, 5, 5],
    'course difficulty rating' => [3, 3, 4, 4, 4, 4],
    'social element rating' => [5, 4, 5, 4, 5, 5],
    'value for money rating' => [5, 2, 4, 4, 5, 5],
    'safety rating' => [5, 4, 4, 4, 4, 5],
    'career services rating' => [5, 1, 3, 3, 5, 5]
  },
  'The University of Adelaide' => {
    comment: ['Few electives available in one semester, ban you from the class that they think you have the ability already and force you to choose other subjects. Make decisions for you but not give enough help. Always feel helpless and anxious. Two stars for the teaching quality and ZERO for student service.',
    'The lecturers are wonderful and the only asset the uni has. They are supportive, patient and encouraging.',
    'Currently studying master of mechanical engineering here. Nice campus with warm staff. Some places are unable to access if you are not a student of the faculty after 6 o’clock on weekdays or whole weekends. The teaching styles of professors are all different but normally satisfied with them. If you are looking for a better future, be better prepared.',
    'We Adelaidians are so privileged to have such highly advanced facilities for education. Thank you to all staff for your fantastic efforts.',
    'Appreciate the teaching staff for their fantastic efforts.',
    'The university has let down it is staff and students, and pushes a view of cynicism over optimism. In particular, I cannot stand with a board of directors that disregard the wellbeing of its students, casual tutors, admin staff and full academic staff. It is time for a change'],
    'reputabilty rating' => [3, 5, 4, 5, 5, 3],
    'education quality rating' => [2, 5, 5, 5, 5, 2],
    'campus facilities accom rating' => [4, 4, 3, 4, 5, 3],
    'course difficulty rating' => [5, 3, 4, 3, 5, 2],
    'social element rating' => [3, 4, 2, 4, 5, 2],
    'value for money rating' => [2, 4, 4, 5, 5, 3],
    'safety rating' => [5, 4, 4, 4, 5, 3],
    'career services rating' => [1, 5, 4, 5, 4, 3]
  },
  'Universiti Malaya' => {
    comment: ['Top university in Malaysia, it’s good to study here. The cafes and foods are very nice especially the Faculty of Science roti canai. Have quite some good places to relieve stress and near to most malls around KL.',
    'The best place that I study right now that got many necessity for student',
    'Bad administration, bad module registration, bad student mobility, and bad college facilities. Overrated for a no1 university in Malaysia. I still have to suffer in this university for another 1.5 years',
    'As a student, I would say I’m lucky to be able to study here, the facilities here are adequate and there are many places with beautiful sceneries such as the lake where students and visitors can go canoeing, I dont know the exact term, too lazy to google.',
    'First year was more general and next 2 years focus on applied chemistry. They have lecturers from local and overseas as well. This is a 100-year old institution, reputable and ranked best university in my country.  Campus is big and students life is wonderful, haven’t mentioned a lot of sport and cultural activities besides studying.',
    'For international students life can be fun at UM. There is an international students’ organisation and there is usually quite a number of students from overseas, particularly at post-graduate level.

    The campus is attractive with a lot of greenery. It is hot and humid however, and because it is a large campus you will generally need motorized transport to get around, although taxi/car hire is relatively cheap, and there are available for short-trip hire scooters strategically placed on campus. There is also a bus service on campus, however to enjoy the university and KL more a private car or motorbike is recommended.

    KL is a big international city with high level shops, services, food and beverage and entertainment available. Although it is a warm climate, the temperature is fairly steady and the environment is culturally rich so that you can expose yourself to diverse people, food and activities.'],
    'reputabilty rating' => [5, 5, 2, 4, 5, 4],
    'education quality rating' => [5, 4, 1, 5, 4, 4],
    'campus facilities accom rating' => [5, 4, 2, 4, 4, 4],
    'course difficulty rating' => [5, 4, 3, 4, 4, 4],
    'social element rating' => [5, 4, 2, 3, 5, 5],
    'value for money rating' => [5, 4, 1, 4, 5, 4],
    'safety rating' => [5, 4, 4, 4, 4, 4],
    'career services rating' => [5, 4, 2, 4, 4, 4]
  },
  'Universiti Kebangsaan Malaysia' => {
    comment: ['Very advanced architectural study and research centre. Don’t let the poor condition of the building paint facade fools you, this place is among best of the faculty among others with its very humble and proffesional lectures which came from various educational background from Masters and PH.D. They also have good proficiency in English. So international student don’t need to worry much. It is even better if you practice simple malay language if you were international, and it was more welcomed to speak malay since it was National University of Malaysia were as you know national relates to the country, Malaysia',
    'Quite a hostile and discriminatory environment for non-local students. Unfortunately, the university is so vastly different than what’s advertised. They are not prepared to deal with international students at all. During my four years here, I faced countless amount of issues with my visa due to their poor departments coordination. Once you finish your studies you will be asked to leave the country even before receiving your transcript and certificate. Horrible student experience.

    Also, be careful not to get scammed during the visa process by them, because many have. Make sure all your dealings with them is through email in writings. During your studies, an international students coordinator will be assigned to you, but won’t be helpful much. No one seems to be trained on how to deal with international students issues, you will feel lost and excluded from all important notifications that local students receive.

    As for teaching aspects in Information Technology related majors (took a 4years Software Engineering course), their professors have poor communication skills and teaching abilities. With outdated courses and professors out of touch with current industry practices, you will face a huge load of useless repetitive assignments that keep you busy, but without any practical knowledge. If your plan is to spend your whole life in academia and continue your masters, phd, work career in UKM, then yeah go for UKM, they will love you there. But if you have bigger ambitions, UKM will make sure to waste 4 years of your life and keep you distracted from self-study over academic work.',
    'I am doing my PG from here and it’s a v nyc university. 1 of the best in Asia and also the fee compared to others is nominal. The science department is v good. People and teachers are courteous and students are not over burdened.',
    'Very big campus. Law school is great. Adequate facilities for "tutorials" and lectures. Lecture room is very big. The library has a sleeping area, which is great. Professors are really kind.',
    'Nice campus, A very good environment for international students'],
    'reputabilty rating' => [5, 3, 4, 4, 4],
    'education quality rating' => [5, 2, 5, 5, 4],
    'campus facilities accom rating' => [5, 2, 4, 5, 5],
    'course difficulty rating' => [4, 3, 3, 3, 4],
    'social element rating' => [4, 2, 4, 4, 4],
    'value for money rating' => [5, 2, 5, 4, 4],
    'safety rating' => [5, 4, 5, 5, 4],
    'career services rating' => [5, 1, 4, 3, 4]
  },
  'Universiti Putra Malaysia' => {
    comment: ['I just loved it here. Living inside campus for a year now. But only got physical classes for 1 month. I really miss that busy month.',
    'This place that calls itself a university is nothing more than a plausible commercial advertisement aka $pam. Who should go to this university? Those who have loads of money, and do not know what to do with it. You are also the right candidate if you have years to dillydally. Indeed, it is also an ideal institution for those looking to inspire others on why to not select a bad university. These intelligent researches may also be studying on how awful universities can be. Now who should not join this university? First, those that do not meet the eligibility requirements mentioned above. Second, people who genuinely want to study. Third, individuals who know English.... Infinite, who need jobs in future. :D.  I am sure I have made my point, however if you still want to risk it, then I must say you are definitely adventures and love challenges life throws at you.',
    'As I am a student of this University,I really feel proud of this.The campus is huge&the environment is very study friendly.Though the campus is very big,the movement is very easy because of the given bus for transit. Someone can only feel the beauty of the campus when he will visit it...',
    'Poor management for new intake. Though there are many volunteers, only concentrate in registration area. Nobody and no sign guiding parents and students to the registration area.',
    "My overall Master's experience has been quite enjoyable. This is because, the staffs are friendly, proffessional and understanding to any needs that you may have. The facilities within the university campus are good as you can use all of the buildings facilities and not just the universities."],
    'reputabilty rating' => [5, 3, 5, 4, 5],
    'education quality rating' => [4, 2, 5, 3, 5],
    'campus facilities accom rating' => [3, 4, 5, 3, 5],
    'course difficulty rating' => [3, 2, 4, 4, 4],
    'social element rating' => [2, 4, 4, 3, 5],
    'value for money rating' => [4, 1, 5, 4, 4],
    'safety rating' => [5, 4, 5, 4, 5],
    'career services rating' => [5, 3, 4, 2, 5]
  },
  'Universiti Sains Malaysia' => {
    comment: ['Hey guys, given your post-pandemic lavish expenditures on the main campus would you make a room in your budgets to upgrade the old degenerate buses that goes back and forth from engineering campus????? They have been in service since day one I joined your uni… I am drenching in my sweat as I am writing this review.',
    'Great place to learn, good place to hang out with friends and study, bad basic facilities',
    'Best university in Malaysia!High education study place to learn a new knowledge!Professor very friendly and get close by course mate which from different country',
    '4 years studying here and I’m gonna miss all the memories created here.'],
    'reputabilty rating' => [5, 4, 5, 4],
    'education quality rating' => [5, 4, 5, 4],
    'campus facilities accom rating' => [5, 2, 4, 4],
    'course difficulty rating' => [5, 4, 3, 3],
    'social element rating' => [5, 4, 4, 4],
    'value for money rating' => [5, 3, 5, 4],
    'safety rating' => [5, 4, 5, 4],
    'career services rating' => [5, 4, 4, 4]
  },
  'Universiti Teknologi Petronas' => {
    comment: ['A university in need of much reformation.

    Many graduates here are selfish and insincere people who believe the world revolves around them and only them. The immaturity in them is too much to bear.
    They care only for themselves.
    I thank God that they are a few who are not like that.
    I urge the present students to be selfless and to THINK critically during their time as students there.
    Have a heart, your skills are meant for God, not for yourselves!
    UTP is a big disappointment in many ways. But it can be redeemed.
    Much can be done. Much must be done. Do not waste your life, reader/ UTP student/ UTP Staff.',
    'Not recommended coming here. students voices are not being heard. very poor management by the admin.',
    'This is the WORST university in Malaysia. The staff are unhelpful. I registered for chemical engineering course. The staff seen my message and didn’t even want to help me when I am unable to register a student account. I contacted at least 5 staff and none of them have been helping me to solve my problem. Never waste money in such university which does not cares about their student matters.',
    'In my fair an unbiased opinion the internet on campus sucks and is hard to work with (it keeps asking you to login every few minutes). Campus administration is slow and the IT department is hardly open.'],
    'reputabilty rating' => [3, 3, 3, 4],
    'education quality rating' => [2, 2, 2, 4],
    'campus facilities accom rating' => [3, 3, 2, 2],
    'course difficulty rating' => [3, 3, 2, 4],
    'social element rating' => [2, 4, 3, 4],
    'value for money rating' => [2, 2, 2, 3],
    'safety rating' => [4, 3, 3, 4],
    'career services rating' => [2, 2, 1, 4]
  },
  'Universiti Utara Malaysia' => {
    comment: ['My degree life was being spent at this uni, thank you UUM for making me having a great journey',
    'The best place to pursue your studies in the serene environment assisted by excellent educators.',
    'It is my second International academic journey. I find it distinctive from previous. It’s an excellent experience.',
    'Nice campus, beautiful environment but low quality education.'],
    'reputabilty rating' => [5, 5, 5, 3],
    'education quality rating' => [5, 5, 5, 2],
    'campus facilities accom rating' => [5, 4, 5, 5],
    'course difficulty rating' => [5, 4, 3, 3],
    'social element rating' => [5, 4, 5, 4],
    'value for money rating' => [5, 4, 5, 3],
    'safety rating' => [5, 5, 4, 4],
    'career services rating' => [5, 4, 4, 3]
  },
  'Sunway University' => {
    comment: ['An actual horrendous environment to study in, students plagiarising left and right with the teachers allowing it and in fact, encouraging academic dishonesty. Tried reporting said lecturers before with video proof of academic malpractice but the school department straight up told me that reporting teachers were not allowed. A true cesspool of AI disguising as professionals. 0/10 would never come back again.',
    'I am Sunway University PhD graduate. I have done my PhD in Biology. Sunway is my dream place. Everything is perfect, all the faculty members are highly skilled and enegetic. The staff is fully cooperative and vibrent. The facilities are more than enough for a PhD studies. I enjoyed the university life and missing those unforgetable moments. In fact, I love Sunway.',
    'The most happening campus!',
    'The cost of study is really higher than other universities of Malaysia. However the service, education system, faculties and environment are world class. Highly recommended for pursuing a degree where you make your smooth career path.',
    'Pros
    Good facilities with ease of access to public transport. The classrooms are air conditioned with adequate tables and chairs. The toilets are also washed daily and are relatively clean.
    Cons
    The syllabus for their own foundation programme has a few hiccups such as inconsistent formatting of exam papers - leading to uneven distribution of these papers and difficulty levels varying among students. The elevators are also constantly under maintenance.'],
    'reputabilty rating' => [1, 5, 4, 4, 4],
    'education quality rating' => [1, 5, 4, 4, 3],
    'campus facilities accom rating' => [1, 4, 4, 5, 4],
    'course difficulty rating' => [1, 4, 3, 4, 4],
    'social element rating' => [1, 4, 4, 4, 4],
    'value for money rating' => [1, 4, 4, 5, 4],
    'safety rating' => [1, 5, 4, 4, 4],
    'career services rating' => [1, 4, 3, 4, 4]
  },
  'Taylors University' => {
    comment: ['The education is extremely bad. Lecturers are mostly untrained and lacked experience. The way majority of how they teach is by reading directly from the slides with no effort in attempting to elaborate the materials, and sometimes topics are skipped for idk what reason. One of my former lecturer was literally a recently enrolled part time master’s degree student (in terms of qualification, he only had bachelor’s essentially), which you can imagine how incompetent he was at teaching us students regarding the module that he was teaching. If you ask any other foundation student from different departments (business, arts, engineering, etc), they will say the exact same thing (topics are for some reason skipped, low effort teaching such as reading from the slides with no elaboration, and etc)',
    'Campus life is god horrible, especially in 2022. A LOT of shops are closed in Syopz Mall. There are no more Tealive, no more Mamak, no more Apple store, no more old town white coffee, no more bakery, and the whole bottom floor of Syopz Mall is COMPLETELY CLOSED DOWN/BANKRUPTED. Honestly I have no idea how would students in 2022+ are gonna survive with such a limited selection of eateries. You might as well choose Sunway University - as it has a mall connected via canopy walk/bridge and MORE eateries both in AND outside (MORE than 30 hawker stalls!!!) campus  - if you prioritize on a good campus life, cause it’s literally 1-2km away from Taylor’s. I would literally would’ve chosen to sacrifice the whole lake to create more eateries. The lake literally serves no purpose other than being an eye candy, which again in my opinion, eye candy is useless if I’m dying from hunger.',
    'Overall an above average teaching quality (depending on program).
    Top notch facilities with a stunning lake, wish they could add a bridge connecting both ends as walking distance between both ends are quite far.',
    'Bad food, good ambiance. You can feel the stress during submission period. Very realistic university experience. Parking is usually very full, and lifts are very slow.',
    'Very supportive lecturer that will be there for you to help you with your difficulties, great student environment that will make you feel like home, great food that will always guarantee your stomach full and satisfied and have the BEST library !'],
    'reputabilty rating' => [2, 3, 4, 4, 4],
    'education quality rating' => [1, 3, 4, 4, 5],
    'campus facilities accom rating' => [3, 1, 4, 2, 5],
    'course difficulty rating' => [3, 3, 4, 3, 4],
    'social element rating' => [4, 4, 3, 4, 4],
    'value for money rating' => [2, 4, 3, 4, 4],
    'safety rating' => [4, 4, 4, 4, 4],
    'career services rating' => [2, 2, 3, 3, 4]
  },
  'Management and Science University' => {
    comment: ['Please don’t study here. The lecturers are the best, but their management part is the worst. Some of the staffs are even rude.',
    'Excellent university to complete your tertiary education. I completed my PhD in Management here. They have excellent Professors to guide through your thesis. Excellent environment for students, very cosy,  with lots of shops and restaurants.',
    'The residence needs improvement as I came and it wasn’t clean, it was supposed to be clean before I arrive....',
    'Good campus, good facility',
    "I think the positive highlights of our uni is the external and internal programme's that conducted in each and every sem. I don't think so, most of the othet uni's out there have such kind of programme. Moreover, we do also have PEC where it improves a students English knowledge and also develop's internel talent of a student. Msu is a university of choice of course. Here, we can see alot of foreign student's and I believe that they have never felt leftover at any time as Msu gives a great comfort to them too.",
    'Well, it is a good environment to study at...however, english is a non priority so it made it harder to learn and speak proper english and they have so many of things that we are required to pay...gems is a must to be collected here...but all events we want to join to collect gems, we have to pay..i have paid more just to get gems points compared to paying for assignments..that is the not so appreciated part of it especially when being a student...'],
    'reputabilty rating' => [4, 4, 4, 4, 4],
    'education quality rating' => [5, 5, 4, 4, 3],
    'campus facilities accom rating' => [5, 4, 2, 5, 3],
    'course difficulty rating' => [3, 4, 4, 4, 3],
    'social element rating' => [4, 4, 4, 5, 4],
    'value for money rating' => [4, 5, 5, 4, 3],
    'safety rating' => [5, 5, 3, 4, 4],
    'career services rating' => [3, 5, 4, 4, 4]
  },
  'National University of Singapore' => {
    comment: ['Best research & education university in Asia. Student campus is so good. You will learn your life skills here.',
    'Very nice campus. Full of green. Well connected by MRT and Buses. There are free shuttle buses to get around inside . Lot of eateries and all facilities available.

    I am from computing department. Awesome place to learn, almost like a second house',
    'The school turns out great researchers and book smarts employees.

    However, in general, it does not churn out well-rounded individuals.

    For some reason, alumnis of NUS do not perform well in large social environment where people to people social skills are required.',
    'NUS provides you with great infrastructures and facilities. There are college bus which you could take to travel between faculties. Went to U-Town to eat at the foodcourt. The variety of the foods there are quite broad. You could find Korean, Indian, Japanese, Chinese and other foods. The price is cheap for students and non-students. There is also a small swimming pool in the U-Town

    In the USP (I’m not really sure whether it’s called USP because I found it in between halls near the U-Town) cafeteria/foodcourt area, there is also a halal food section. This canteen is only for NUS students since you need your student card to get the foods there.',
    'Perhaps the best part of NUS is the vast amount of opportunities it affords it’s students. It’s almost as if every week there’s a new career fair, industrial visit, hackathon, or any other competition or event for it’s students to join. NUS also offers multiple exchange programs ranging from 3 to 12 months (see the NOC programme) to grant it’s students a more international outlook upon their graduation.',
    'Teachers usually have some experience in research and are meticulous in teaching. Teachers are also usually open to interaction and would provide extra help when required. Students are open and collaborative.  Campus facilities are more than sufficient.',
    "If there's one thing I dislike about NUS, is that classes are really quiet. Most classes suffer from a lack of tutor-student interaction. This can be attributed to the result-oriented nature of Asian culture. Although, it doesn't help that some of the student tutors have difficulty speaking well in class.

    Nonetheless, the standard of education would definitely be considered good. Lecturers are knowledgeable and friendly (at least in my faculty, Science/Computing) and students are always welcomed to seek their help or to arrange for consultations.",
    "I was admitted to law and transferred to computing at NUS. I was also in USP. Singaporean universities attempt to combine both UK and US curricula. US system is known for its liberal arts education. NUS allows its students to take electives, so much so that it takes one extra year to graduate than UK universities. UK universities admit students to a particular subject only and is students graduate in 3 years. NUS students take 4 years to graduate, 3 of which are similar to the UK system and 1 one which is reserved for liberal arts electives."],
    'reputabilty rating' => [5, 5, 5, 4, 5, 4, 5, 5],
    'education quality rating' => [5, 4, 4, 5, 4, 5, 3, 4],
    'campus facilities accom rating' => [5, 5, 4, 5, 5, 5, 4, 4],
    'course difficulty rating' => [5, 4, 4, 4, 5, 4, 4, 5],
    'social element rating' => [5, 3, 4, 4, 5, 4, 4, 4],
    'value for money rating' => [5, 3, 4, 4, 5, 4, 4, 4],
    'safety rating' => [5, 5, 5, 4, 4, 4, 5, 5],
    'career services rating' => [5, 4, 3, 4, 3, 4, 4, 4]
  },
  'Nanyang Technological University' => {
    comment: ['Although there is still room for improvement for some professor, the overall study experience there is excellent. New building also very beautiful. Point deducted due to 1) Sometimes the library really noisy, many students like to make loud discussion there; 2) No MRT access (But if there were, maybe, in the future, who knows, it might become very crowed....)',
    'NTU could have spent more money on providing a more reliable campus bus service or ensuring the module selection website works due to the "first come first serve" system. But instead the money went into funding a fancy looking building and a garden.

    Food prices are also too high for an institution and lack of Halal food',
    'Really nice campus. Great facilities. Nice people.

    But if you’re studying engineering, be forewarned that most modules are conducted with online, pre-recorded video lectures as the primary means of learning. It’s hardly effective, nor what one would expect when signing up for a degree course at a leading local university.',
    'It’s a great university with lots of things going around. But be competitive minded otherwise it’s going to be tough like hell.',
    'When sending an enquiry/request to the school, emails and calls will be transferred from one person to another without getting them addressed. The business course is overhyped and after three years there, I felt that I do not get the kind of knowledge that is relevant to the specialized industry. The only good thing about this school is probably their perceived good brand name, in Singapore.',
    'NTU is dynamic environment for you to learn and engage in many activities after class. It gives you opportunities to make new friends, enhance your network and have an insight about yourself. Moreover, what I like at NTU is that it provides you variety of majors and courses, proficient professors and instructors as well as good infrastructure for studying and accommodation.',
    'Please please stay away from this university if you are foreigners. After you graduated, you will get discriminated from hiring by Singaporean companies because they must apply Employment Pass for you. EP is approved by government only if your salary is 6k or higher which is ridiculous for a new grad. So good luck pay back your student loans that you got from local banks when you cannot get a job here just because you are foreigners.',
    'NTU is a very reputed university worldwide. I personally know people who did their MSc or PhD from NTU and then got into top univsersities in the world for PhD or Post-Docs (like MIT and other similiar universities).'],
    'reputabilty rating' => [5, 5, 4, 5, 3, 4, 4, 5],
    'education quality rating' => [5, 4, 3, 5, 3, 4, 4, 5],
    'campus facilities accom rating' => [4, 3, 4, 5, 3, 5, 4, 5],
    'course difficulty rating' => [4, 4, 4, 5, 3, 4, 5, 5],
    'social element rating' => [4, 4, 5, 3, 3, 4, 3, 5],
    'value for money rating' => [4, 3, 2, 4, 2, 4, 3, 5],
    'safety rating' => [5, 5, 4, 5, 3, 5, 4, 5],
    'career services rating' => [4, 4, 3, 3, 3, 4, 3, 5]
  },
  'Singapore Management University' => {
    comment: ['The Good
    1. Because of the intensity of the projects and because I am a perfectionist, I stayed long hours at school doing projects with friends. Because of the time we spent together, both the duration and the stress that we endured, most of my project friends are friends who last. Not that we have time to hang out with each other all the time, but we are the type of friends that randomly whatsapp each other in a while to check on others. We pass on opportunities that we think others will be interested. We come together again to participate in case challenges, form a startup (and it was adopted by the school and we just become advisors of the sort), travel and other stuffs together. I know it is not the type of friends who will hang out and who you will whine and gossip with. But they are great friends, indeed.

    2. The people here are amazing. In SIS, the guys take projects onto an amazing eye-opening level. My Data Mining Prof even commented that most of our projects are beyond the scale of the thousands of dollars projects in the real life. And because we have time and are willing to explore new technology, the stuffs that they can do is truly awesome. I know a few who found startups and avoid the beaten path of becoming a tech person at banks. Their take on life is different. I am inspired and motivated to learn even more to stay on top of my game.

    3. Most Profs are very down to earth and helpful. They dont try to hide behind books. They constantly push to adopt new technologies. They try hard to let us know the standards are high but they are there to help. They try really really hard to let us know they are our friends and they want us to excel. That helps a lot, especially for modules that I am scared of and/ or have no interest in.

    The Bad
    1. The learning curve for SIS students is so damn high. I have had exams when they ask you to properly implement the solution when the modules only teach you the theory behind designing it. You are always expected to reach the impossibly high standards. The Profs seem like they do not have enough time to teach us that much coding in class, so they dedicate all their time to the design theory and assume we know how to implement the actual solution. It is tough, but after a while, I guess it teaches me to be an independent learner. Nonetheless, at least for some of the modules, my GPA is greatly affected.

    2. After a while (in my case, exactly 3 semesters), I have a group of close friends. We kind of bid for classes together to be in the same group. It is comforting because you know other people’s working style, you know they’ll commit and you know you can trust the quality of their work. But then again, after a while, it gets boring. I dont get to know other people on a deeper level anymore. And SIS is very small, if you piss off your first group by being the bossy one or the slack one, well, I guess gossip travels very fast and that label will stick for quite some time.

    3. THE WORKLOAD IS JUST CRAZY. Projects, meetings, CCA commitments, quiz, exams. It sounds like any other college student. But it is really crazy. I am grateful if I have more than 4 hours to sleep any given day.


    Well that is just my two cents. All in all, I dont regret making SMU my first choice.',
    'Hmm it’s tiring and frustrating at times. The competitiveness, the grading system, the endless projects, assignments, mid-terms and finals. But the exhaustion is also what bonds all SMU students together, when you find yourself in an awkward situation with a peer and don’t know what to say, the safest bet is to go "Man I’ve so much work to do!" Then, the conversation will probably flow from there, lo and behold a (mind my french) bitching session has started and your instantly (for that moment at least) bonded and awkward moment have successfully been passed. Plus, the craziness also forces you to either learn to manage your time or die trying. Or well you can always opt for failing, which well, kind off defeats the purpose of going to school if your not going to try at all (trying then failing is completely different from failing without trying!)

    Sometimes it can also be very uncomfortable and disconcerting because you get thrown into courses you’ve absolutely no skill in. I am an IT idiot, I’m the type that prefers all things in the traditional technological free way, I’m even somewhat averse to texting. But I get thrown into a Computer Analysis Tool class (well its basically an excel class), I suffered, badly, barely survived, barely passed, no surprises there. But being placed out of your comfort zones is not necessarily a bad thing. You do learn valuable skills but more than the skills, you meet students from different faculties, you are forced to mingle and sometimes work with them closely, you network and you learn and you share. You may end up hating each other, but you will no doubt have learned a thing or two from the other (whether you admit it or not).

    The CCA-obsessed culture is another hidden gem of SMU. To outsiders they sometimes do not understand our "obsession" with it. But to us, that’s where our friends are, that’s where we get to escape from the stress of studying and focus on something we are truly passionate about, it is also there that we get hands-on practice in management, in communication, peer-learning and discipline, among many other things. I was in and still am in 2 myself, though am sort off taking a short break from both, was fully devoted to both the year before and well, it did get a bit draining. It was draining, but if someone asked me if I’d do it again or if i regretted making the choice I did last year, I would say yes and no respectively. It was tiring, emotionally, mentally and physically, I cried so much and got frustrated so many times, but i learned a lot too :) I definitely grew from the experience and i wouldn’t exchange it for anything else (though ok there were some bad and stupid calls i made in the process which i wince at and wished i could have done or chosen better, but think "Overall" heh)

    However the downside of being an undergraduate in SMU is that we sometimes forget about our family, we are so focused on the hecticness of Uni that we forget all else. So engrossed with our youth, our friends, our school work, our internships, that we sometimes completely forget or push aside family time. In the pass 3 years, I’ve faced many situations in which i ended up sacrifincing family time, but after a tragedy happened in my family. I faced a rude awakening and realised just how important family is, and how much time I’ve missed with them, so this year, I’ve been trying my best to gain some lost time, and spend more time with them.

    I still loved and still do love my experience as an undergraduate in SMU, the key is balance, choose and pick your priorities and balance them as best as you can. We have to remind ourselves that we can’t have it all, there’s just so much that we can do in the limited time we’re given, and to truly experience and enjoy something, choices and sacrifices need to be made. Decide what kind of uni life you want, and start learning to balance! Though remember, sleep really is an option here in SMU ;)',
    'Getting drunk at Ice Cold in the afternoon
    Attending classes after that made class participation more palatable
    The need to stand out made me realise quickly that even though you can bullshit well, nobody likes you (they just pretend that they do)
    Traveling to town is definitely more convenient
    I enjoyed the afternoons hanging out at the coffee shop on Armenian Street before they closed it down
    There were genuinely some interesting times bonding with group mates late into the night rushing for that presentation in the morning
    I wasn’t one of those grade-obsessed students but I learnt a lot trying to juggle a business, school projects, running a CCA, family, love, friends and homework during my time in school (did not sleep very much)
    Seriously people should get over the whole idea of being like at Wharton and fighting for that JPM, DB, MS blah internship. Find your voice!
    Then again, school and life, in general, is what you make out of it. If you wanna be another cog in the machine and run the rat race with your frenemies, go ahead',
    'SMU’s selection of top-notch infrastructure, collaborative academic style and diversity among students contributed greatly to my learning and development. It equipped with key skills that have helped me make a smooth transition into my career.',
    'The learning experience is great with lots of interaction in law classes. There is also a lot of emphasis on understanding and application of concepts and rules. Do not be afraid to venture beyond your comfort zone and get to know the locals.',
    'Its a nice overall experience. One most important advice I could give to future students is to be prepared for classes because the professors will be going through the assigned readings in class.',
    'If you look at the world rankings, SMU gets placed quite low on the tables, or finds no mention on others.

    Talking about the Americas, people hardly know about SMU there. SMU is synonymous to Southern Methodist University. Therefore, SMU is not as famous there.

    However, in Asia, SMU has a great reputation. Students from India, Indonesia, Malaysia, Thailand etc. attend SMU in large numbers. In Sinagpore, from what I’ve heard , SMU graduates are greatly valued. Their job prospects are bery bright. Students do get placed in the top-notch companies.',
    'Outside Singapore, no one really knows about it, but thinks that since it is Singapore, it must be good.

    Inside Singapore, its as good as it gets - especially when it comes to consulting/banking.'],
    'reputabilty rating' => [4, 4, 4, 5, 4, 5, 4, 4],
    'education quality rating' => [4, 4, 5, 4, 4, 4, 4, 4],
    'campus facilities accom rating' => [4, 4, 3, 4, 4, 3, 4, 4],
    'course difficulty rating' => [5, 4, 3, 4, 4, 3, 4, 4],
    'social element rating' => [3, 4, 4, 4, 4, 4, 4, 4],
    'value for money rating' => [4, 4, 4, 4, 4, 4, 4, 4],
    'safety rating' => [5, 5, 4, 5, 4, 4, 5, 5],
    'career services rating' => [4, 3, 5, 4, 3, 4, 4, 5]
  },
  'Singapore University of Social Sciences' => {
    comment: ['Most of the lecturers are good. The school environment is moderate, as there are not enough canteens to accommodate the school population (shared with SIM Global). The school’s communication with the students can be improved because regarding some issues like paperwork for eportfolio and work attachment, there is some confusion among students.',
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

    A few modules have no exams but a project instead. Really easy if you aren’t aiming for A.

    CONS:

    Wtf pay so much and expected to self study before coming to class mainly for activities. Sometimes we just wanna be taught directly.

    Compulsory 2 years of community service is waste of time, but you can easily game this system. I personally got away with just 1 year. Can use to pad resume.

    Overseas experience is on your own dime. Expensive!

    Regular joe on the street has no idea what is SUSS. Annoying to keep explaining. I just say I am from SIM now. Employers will know, thankfully.

    If you are a smoker, the official smoking corner is abit troublesome to get to. It used to be much closer. Staircase will suffice if lazy, but its the wrong thing to do.

    Food sucks in my opinion. Really average. My poly had vastly superior food.

    Compulsory 1 or 2 classes with part time students can really fuck your grades up if you end up with the bad students. I dont blame them, its really hard to put in study effort after working all day.

    I dont really care about CCAs, last I checked 2 years ago there were almost none. But I think even now theres still not many. The only clubs I hear students talk about are of the liver destroying variety. So... your typical uni students I guess?

    Although course grades has many components, it still mainly comes down to exams. Fail the paper, fail the whole mod. Students who aren’t good at exams suffer here.

    My conclusion, if you must go to a local uni for 4 years, SUSS is a good choice. Its less torturous than traditional unis, but you can definitely still learn what is needed. You will still have periods of stress. Degree is recognized, you will definitely have all available career options if you can get the grades. Think of SUSS as local uni "lite".

    But if you just want a job, and doesn’t have to be prestigious or high flyer, go for SIM GE 2 to 3 years degree. Most of my friends are from SIM and all found jobs in good companies with pay on par with local uni grads. Save your time and effort, just go SIM.',
    'Currently I’m my first sem at SUSS and I have to say, the curriculum really sucks. I’m literally walking around like a headless chicken. I do follow everything that’s said in class and when the assignment comes up, it’s nothing like what’s taught. And when I ask my lecturer questions, he just says he cannot reveal anything and I’m like ??? I’m not asking for the answer key?? But I don’t know, everyone in my class seems to have nothing to say about it, are all universities like this? I was from SP and tbh, SP was golden in terms of like, teaching and curriculum etc.',
    'Unhelpful and inflexible students support team. Instructors do not help much as well. Highly not recommended!',
    "It's quite a place to hang out with plenty of food including Starbucks and a good mix of international staff and students. They have full them classes and part time classes for professionals, Managers, Executives and Techs (PMET). Good library complete with nice lecture Theatres. ATM cash machine include DBS, UOB and OCBC. Need an instant photo, there is a photo booth with the ATM. Stamps and bills to pay? But from the SAM machine and use the AXS machine. Wow.",
    "I dont understand why SUSS does not allow the quizzes results to be shown after completing it. Keeping it a secret keeps the students unable to know what questions they got wrong. It creates the problem of dont know what we dont know, instead of knowing what we dont know so at least the students would have a chance to go and learn what they missed out."],
    'reputabilty rating' => [4, 3, 3, 3, 3, 4, 3],
    'education quality rating' => [3, 3, 3, 2, 2, 3],
    'campus facilities accom rating' => [4, 2, 4, 4, 3, 3],
    'course difficulty rating' => [3, 3, 2, 3, 3, 4, 4],
    'social element rating' => [4, 4, 5, 3, 3, 5, 4],
    'value for money rating' => [4, 2, 3, 2, 3, 4, 4],
    'safety rating' => [5, 4, 4, 4, 4, 5, 5],
    'career services rating' => [3, 2, 4, 3, 3, 4, 3]
  },
  'Singapore University of Technology and Design' => {
    comment: ['Not an easy school to study in but really skillful. They maybe a new university, but there are also alot of dropouts in the first year, even more than NTU or NUS. The students there really learn on the hands-on and thinking skills which ultimately make most of them really smart and good workers. This are all my 2 cents from interacting with a dozen of student.',
    'When I first accepted enrollment, it was for their curriculum approach and their scholarship.

    Today, if you want to join, these should be the main factors:

    Hands-on Experience. Unlike other universities that follow the traditional curriculum of lectures and classes, SUTD does this with an imbued design methodology - meaning to say, almost every module you do, there is at least 1 project, & not just for Design modules.
    Opportunities. While other universities have well established programs and companies, SUTD has a crazy vibrant innovation culture. Want to do projects outside of curriculum? Join a maker club (we have plenty); join a research program get funding; join a competition; pitch a start-up (at least 3 startup programmes with funding). You literally walk around SUTD and you can spot projects here and there done by different people.
    This is compared to other universities where you have to be of a certain pedigree or scholarship to do research projects or get funding.
    Maker’s paradise. We have the largest fabrication lab in Asia? And its free to use for students (with limits of course). There’s 3D printers, laser cutters, water jet, metal works, etcera. What you make is only limited by your creativity and drive (and time).
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
    'I had the best undergraduate life I could possibly have here with a good mix of learning, growing and socialising. The fabrication lab here is better than MIT as visited both places. The amount of resources you get is above when compared to an average undergraduate degree. The lessons gained beyond the textbooks will last me a lifetime. Unfortunately food is not the best, we need to solve that.',
    "One of it's kind in Singapore and you always meet people who have something interesting to talk about. Excellent research minds. The paperwork and access to facilities is a bit of a pain as is the case in almost most of the universitites in Singapore.",
    "I have personally been there and seen the facilities and studios there.

    It is Fabulous !!

    If extended an admission advise, do accept it! You will not regret the decision.

    However keep in mind that education in Sg does not guarantee that you will also get empoloyment there. Also after the big hit to its economy, entry of Foreigners into their workforce will be definitly scrutinized and restricted.",
    "A nice, modern university catering to Singapore's current and future needs. It is conveniently located to the nearby Upper Changi MRT station and the Changi City Point shopping mall which is not far away. I have always liked design but unfortunately during my time, there were no courses related to design thinking other than architecture. Otherwise, I would not have wasted my time studying engineering at NUS."],
    'reputabilty rating' => [5, 4, 4, 5, 5, 5],
    'education quality rating' => [5, 5, 4, 5, 4, 4],
    'campus facilities accom rating' => [4, 4, 3, 5, 5, 5],
    'course difficulty rating' => [5, 3, 3, 5, 4, 4],
    'social element rating' => [3, 4, 4, 5, 4, 4],
    'value for money rating' => [4, 4, 4, 5, 4, 5],
    'safety rating' => [5, 4, 5, 5, 5, 5],
    'career services rating' => [4, 4, 4, 5, 4, 5]
  }
}

# for each user, go through the educations list
# for each education, get the university id
# use that university id to add to review
# add user_id to review user

users.each do |user|
  user.educations.each do |education|
    curr_review = Review.new
    curr_review.user = user
    curr_review.university = education.university

    unless reviews[education.university.name][:comment].blank?

      uni_reviews = reviews[education.university.name]
      review = uni_reviews[:comment].first
      curr_review.comment = review
      reputabilty_rating = uni_reviews["reputabilty rating"].first
      education_quality_rating = uni_reviews["education quality rating"].first
      campus_facilities_accom_rating = uni_reviews["campus facilities accom rating"].first
      course_difficulty_rating = uni_reviews["course difficulty rating"].first
      social_element_rating = uni_reviews["social element rating"].first
      value_for_money_rating = uni_reviews["value for money rating"].first
      career_services_rating = uni_reviews["career services rating"].first
      safety_rating = uni_reviews["safety rating"].first

      curr_review.reputabilty_rating = reputabilty_rating
      curr_review.education_quality_rating = education_quality_rating
      curr_review.campus_facilities_accom_rating = campus_facilities_accom_rating
      curr_review.course_difficulty_rating = course_difficulty_rating
      curr_review.social_element_rating = social_element_rating
      curr_review.value_for_money_rating = value_for_money_rating
      curr_review.career_services_rating = career_services_rating
      curr_review.safety_rating = safety_rating

      uni_reviews[:comment].delete_at(0)
      uni_reviews["reputabilty rating"].delete_at(0)
      uni_reviews["education quality rating"].delete_at(0)
      uni_reviews["campus facilities accom rating"].delete_at(0)
      uni_reviews["course difficulty rating"].delete_at(0)
      uni_reviews["social element rating"].delete_at(0)
      uni_reviews["value for money rating"].delete_at(0)
      uni_reviews["career services rating"].delete_at(0)
      uni_reviews["safety rating"].delete_at(0)
      curr_review.save
    end
  end
end

reviews = Review.all

reviews.each do |review|
  10.times do
    curr_user = users.sample
    next if review.user == curr_user || review.votes.map(&:user).include?(curr_user)

    status = %i[upvote downvote].sample
    curr_vote = Vote.new(status:)
    curr_vote.user = curr_user
    curr_vote.review = review
    curr_vote.save
  end
end

puts "Creating Chatrooms"

Chatroom.create(name: "general", description: "Share any announcement / useful information")
Chatroom.create(name: "student life", description: "The everyday life of a student")
Chatroom.create(name: "city life", description: "Learn more about the city where a university's located at")
Chatroom.create(name: "help", description: "Need help with anything?")

puts "Creating Messages"

messages = {
  general: ["The University of Newcastle is having an open house next month!", "I'll be there! Who else is coming?", "Me!", "Anyone has ever visited the Nanyang Technological University in Singapore?"],
  "student life" => ["How is student life like in National University of Singapore?", "You have the freedom to focus on what you want in university. Some go hard on academics, some focus on work experience, and some want to socialize and have fun. But don't expect to be able to maintain a perfect CAP and still be able to party on a very regular basis. A trade-off needs to be made and you are largely responsible for curating your own university experience.", "join a cca, you need it as a breather", "What club/organisation should I join in Universiti Kebangsaan Malaysia?", "They have a lot of clubs there. But,  I heard the tennis and e-sports clubs are pretty popular there"],
  "city life" => ["How expensive is it to live in Melbourne? I'm interested to study at the university of Melbourne next year.", "There are different types of private rental accommodation in Melbourne, and the cost of these vary depending on where you live and how many people you live with. The monthly rental fee for a 1 bedroom flat is around $340 if you choose one in downtown Melbourne. The licing cost will significantly increase if you eat out everyday. To keep the cost low, I would usually cook durint the weekdays and then eat out once or twice during the weekend", "How's the public transport in Singapore?", "Public transport is Singapore is great and reliable! Majority of the students here take publict transport to go to campus. The busses and MRTs are very clean. You can get to almost anywhere in Singapore by public transport"],
  help: ["I'm an international student and will be studying at University of Adelaide next fall. There's a problem with my student visa so I was wondering if there's anyone from the university that I can contact to ask about this", "You should try contacting their international student support team", "Yes, try emailing their international student support about your issue. All universities have dedicated international student support team who helps internatinal students with their needs"]
}

messages.each_key do |chatroom_name|
  messages[chatroom_name].each do |message|
    curr_message = Message.new(content: message)
    curr_message.chatroom = Chatroom.find_by(name: chatroom_name)
    curr_message.user = users.sample
    curr_message.save
  end
end
