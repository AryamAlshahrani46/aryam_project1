import 'package:aryam_project1/data/course_data.dart';
import 'package:flutter/material.dart';
import'package:aryam_project1/model/course_model.dart';

import 'second_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

 @override
 State<Homescreen> createState() => _HomescreenState();
}
  final List<Map<String, dynamic>> places = const [
    {
      "name": "الدرعية الأصيلة",
      "subtitle": "Historic Diriyah",
      "image": "assets/images/diriyah.jpg",
      "description": "تعد الدرعية التاريخية مهد انطلاق الدولة السعودية الأولى، وأحد أهم المواقع التراثية المسجلة لدى منظمة اليونسكو. تتميز المنطقة بطرازها المعماري النجدي الفريد، والمباني الطينية الأثرية التي تحكي قصص الماضي العريق والأصالة. يحتضن هذا المعلم حي الطريف التاريخي الشهير، ومطل البجيري الفاخر المليء بالمطاعم والمقاهي العالمية المتميزة. تمنح الدرعية زوارها تجربة استثنائية تجمع بين عبق التاريخ المجيد، وجمال التصاميم الحديثة والأنشطة الثقافية. تعد الوجهة المثالية لمن يبحث عن جولات ممتعة بين الأزقة القديمة، والاستمتاع بإطلالات وادي حنيفة الساحرة. تستضيف المنطقة بانتظام فعاليات عالمية ومعارض فنية، تجعلها مركزاً حيوياً للثقافة والترفيه في العاصمة. تجربة زيارة الدرعية تنقل الزائر في رحلة عبر الزمن، لاكتشاف أمجاد المملكة وتاريخها الوطني الشامخ.",
      "time": "5:00 PM - 12:00 AM",
      "ticket": " تذكرة دخول مسبوقة الدفع / Paid Entry",
    },
    {
      "name": "بوليفارد وورلد",
      "subtitle": "Boulevard World",
      "image": "assets/images/boulevard.jpg",
      "description": "تعتبر منطقة بوليفارد وورلد أكبر وأضخم الوجهات الترفيهية الحديثة، التي تم إطلاقها ضمن فعاليات موسم الرياض. تتيح المنطقة لزوارها فرصة العيش في رحلة خيالية بين حضارات وثقافات متعددة، لعدة دول من مختلف القارات. تتميز بوجود أكبر بحيرة صناعية في العالم، توفر ألعاباً مائية وجولات بالقوارب والتلفريك البانورامي الممتع. تضم المنطقة أجنحة مصممة بدقة، تحاكي أشهر معالم المدن العالمية مثل باريس، وروما، واليابان، ومصر. توفر للمرتادين تجارب تسوق فريدة، وتذوقاً لأشهر أطباق المطبخ العالمي وسط أجواء حيوية مليئة بالبهجة. تحتوي على مناطق ألعاب حركية وإلكترونية متطورة، تناسب جميع الفئات العمرية والعائلات بحثاً عن المغامرة. تجسد بوليفارد وورلد روح الرياض الحديثة، التي تجمع بين العالمية والتنوع الترفيهي الباهر في مكان واحد.",
      "time": "4:00 PM - 1:00 AM",
      "ticket": " تذكرة دخول مسبوقة الدفع / Paid Entry",
    },
    {
      "name": "مركز الملك عبدالله المالي (KAFD)",
      "subtitle": "Financial District",
      "image": "assets/images/kafd.jpg",
      "description": "يمثل مركز الملك عبدالله المالي الأيقونة المعمارية الحديثة، التي تعكس النهضة الاقتصادية والحضرية في قلب العاصمة. يتميز المركز بتصاميمه الهندسية المستقبلية، وناطحات السحاب الشاهقة التي صممت وفق أعلى معايير الاستدامة البيئية. يحتوي على جسور مشاة مظللة ومكيفة، تربط بين المباني لتوفير بيئة تنقل مريحة وعصرية للزوار والموظفين. يضم المركز مجموعة فاخرة من المطاعم العالمية، والمقاهي الراقية ذات الجلسات الخارجية المتميزة والجذابة. تعد ساحاته المفتوحة وممراته الحديثة مكاناً مثالياً، لالتقاط الصور التذكارية وممارسة رياضة المشي المسائية. يستضيف KAFD العديد من المعارض الفنية، والفعاليات الثقافية الرقمية التي تجذب المبدعين وصناع المحتوى. يعتبر المركز الوجهة الأولى لمن يبحث عن تجربة تسوق وتناول طعام، وسط أجواء معمارية عالمية فاخرة.",
      "time": "24 Hours / مفتوح 24 ساعة",
      "ticket": "مجانًا / Free Entry",
    },
    {
      "name": "قصر المصمك",
      "subtitle": "Al-Masmak Palace",
      "image": "assets/images/masmak.jpg",
      "description": "يقف قصر المصمك الشامخ كشاهد تاريخي على الملحمة الوطنية الفاصلة، في تأسيس وتوحيد المملكة العربية السعودية. يقع هذا الحصن الطيني الشهير في قلب الرياض القديمة، ويتميز بأسواره السميكة وأبراج المراقبة المرتفعة. يحتوي القصر على متحف يعرض مجموعة من الأسلحة، والخرائط، والصور التاريخية التي تروي قصة فتح الرياض. يتكون المبنى من بوابة رئيسية مصنوعة من جذوع النخل والطين، بالإضافة إلى مجلس قديم، ومسجد، وبئر ماء. يحاط القصر بساحة الديرة الشهيرة، التي تضم أسواقاً شعبية تراثية تعج بالحركة وأجواء الماضي الجميل. توفر زيارة القصر فرصة قيمة، للتعرف عن قرب على تفاصيل بناء القلاع السعودية القديمة وهندستها. يعتبر المصمك مقصداً أساسياً لكافة السياح والزوار، للتعرف على ركائز التاريخ السعودي الأصيل والمجيد.",
      "time": "8:00 AM - 9:00 PM",
      "ticket": "مجانًا / Free Entry",
    },
    {
      "name": "المتحف الوطني السعودي",
      "subtitle": "National Museum",
      "image": "assets/images/museum.jpg",
      "description": "يعد المتحف الوطني السعودي الصرح الثقافي والحضاري الأبرز، المعني بجمع وثائق وتاريخ شبه الجزيرة العربية. يتميز المتحف بتصميمه المعماري الفخم، وحدائقه الغناء الواسعة الواقعة ضمن مركز الملك عبدالعزيز التاريخي. يضم ثماني قاعات عرض رئيسية مرتبة زمنياً، تأخذ الزائر في رحلة من بداية الكون وحتى العصر الحديث. يحتوي على مجسمات تفاعلية، ومخطوطات نادرة، وقطع أثرية فريدة تعكس تعاقب الحضارات الإنسانية والإسلامية. يوفر المتحف وسائل عرض وتقنيات صوتية وضوئية متطورة، تسهم في إثراء التجربة التعليمية والتثقيفية. يقدم أنشطة ورش عمل عائلية، وبرامج مخصصة للأطفال لتشجيعهم على استكشاف التراث الوطني والاهتمام به. يعتبر المتحف وجهة لا غنى عنها لكل مهتم بالتاريخ والآثار، والرغبة في فهم الموروث الثقافي للمملكة.",
      "time": "9:00 AM - 8:00 PM",
      "ticket": " تذكرة دخول مسبوقة الدفع / Paid Entry",
    },
    {
      "name": "وادي حنيفة",
      "subtitle": "Wadi Hanifa",
      "image": "assets/images/hanifa.jpg",
      "description": "يمتد وادي حنيفة كشريان طبيعي ممتد عبر العاصمة، ليشكل أكبر متنزه مفتوح ومتنفس طبيعي لسكان المدينة. يتميز الوادي بمساحاته الخضراء الممتدة، وبحيراته الطبيعية، وشعابه الصخرية التي أُعيد تأهيلها بشكل استثنائي. يوفر مسارات مخصصة وآمنة، لممارسة رياضة المشي والجري وركوب الدراجات الهوائية وسط الطبيعة الهادئة. تحتوي أطراف الوادي على جلسات عائلية مجهزة، ومناطق مخصصة للتنزه والشواء بين الأشجار والنخيل. تعتبر منتزهات سد العلب والسد الحجري، من أشهر النقاط داخل الوادي التي تجذب الزوار خاصة في أوقات الربيع. يُعد الوادي الملاذ الأمثل للابتعاد عن ازدحام المدينة، والاستمتاع بالهواء النقي والمناظر الطبيعية الخلابة. يمثل وادي حنيفة نموذجاً رائعاً للتوازن البيئي والاستدامة، التي تمنح الرياض طابعاً حيوياً ومتجدداً.",
      "time": "24 Hours / مفتوح 24 ساعة",
      "ticket": "مجانًا / Free Entry",
    },
    {
      "name": "المسار الرياضي",
      "subtitle": "Sports Boulevard",
      "image": "assets/images/sports_boulevard.jpg",
      "description": "يُعد مشروع المسار الرياضي أحد أكبر وأحدث المشاريع الحضرية المبتكرة، التي تهدف إلى تشجيع نمط الحياة الصحي. يربط المشروع بين شرق الرياض وغربها، عبر مسارات متصلة ومخصصة للمشاة والدراجين الهوائيين وراكبي الخيل. يحتوي على مساحات خضراء واسعة، ومراكز رياضية، ومعارض فنية مفتوحة تضفي لمسة جمالية على طول المسار. تم تصميم المسار وفق أفضل المعايير العالمية، ليوفر بيئة آمنة ومريحة تماماً لممارسة مختلف الرياضات. يضم مناطق ترفيهية، ومقاهي، ومتاجر متخصصة تخدم الرياضيين والزوار أثناء جولاتهم اليومية في المسار. يسهم هذا المسار في تعزيز القيمة الجمالية للمدينة، وتحويل الرياض إلى واحدة من أكثر المدن ملاءمة للعيش. يعتبر الوجهة المثالية لعشاق الرياضة والصحة، والراغبين في الاستمتاع بأنشطة خارجية مميزة في قلب الرياض.",
      "time": "24 Hours / مفتوح 24 ساعة",
      "ticket": "مجانًا / Free Entry",
    },
  ];
class _HomescreenState extends State<Homescreen>{
 List <CourseModel> PlaceList =[];

    void getData(){
      for(var item in PlaceData){
        PlaceList.add(CourseModel.fromJson(item));
      }

    @override
      void initState(){
        super.initState();
        getData();
      }


}
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

  
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6EE),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 222, 204),
        elevation: 0,
        centerTitle: true,

        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/images/saudi_emblem.png'),
        ),

        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "اكتشف الرياض",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              "Discover Riyadh",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.black87),
            onPressed: () {},
          ),

          IconButton(
            icon: Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
          ),
          SizedBox(width: 4),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(7.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(height: 5.0, color: Colors.orange.shade800),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to RUH    مرحبًا بكم في الرياض ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Explore the wonders of the Riyadh.",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
            SizedBox(height: 7),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];

                return Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                      image: AssetImage(place["image"]!),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),

                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.85),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 14),
                                SizedBox(width: 4),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                place["name"]!,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                place["subtitle"]!,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 4),

                              Text(
                                place["description"]!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SecondScreen(placeDetails: place),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4CAF50),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "استكشف الآن",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 230, 222, 204),
            selectedItemColor: const Color(0xFF2E7D32),
            unselectedItemColor: const Color(0xFF2E7D32),
            currentIndex: 0,
            selectedLabelStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.near_me_outlined),
                label: 'Destinations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
