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
Course.destroy_all

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

puts "Creating Users"

# avatars = ["avatars/avatar1.jpg"]

50.times do |i|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{i}@gmail.com",
    password: "password"

  )
# User.first.photo.attach(io: File.open("app/assets/images/avatars"), filename: "avatar1.jpg", content_type: "ima
# ge.jpg")
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

departments = { "Arts and Social Sciences" => {courses: ["English Literature", "History", "Music", "Philosophy", "Theatre and Performance", "History", "South-East Asian Studies", "Geography", "Social Work", "Sociology"]},
                "Business" => {courses: ["Accountancy", "Business Administration", "Economics", "Finance"]},
                "Computing" => {courses: ["Computer Science", "Information Security", "Information Systems", "Business Analytics"]},
                "Dentistry & Medicine" => {courses: ["Dentistry", "Medicine", "Nursing"]},
                "Design" => {courses: ["Architecture", "Mass Communications", "Digital Media"]},
                "Public Policy" => {courses: ["Journalism", "Political Sciences", "Public Affairs"]},
                "Science & Engineering" => {courses: ["Biomedical Engineering", "Chemical Engineering", "Civil Engineering", "Electrical Engineering", "Environmental Engineering", "Materials Science & Engineering", "Mathematics", "Physics"]}}

departments.each do |department, detail|
  curr_department = Department.new(name: department)
  curr_department.courses = detail[:courses]
  curr_department.save!
end

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

chatrooms = Chatroom.all

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
