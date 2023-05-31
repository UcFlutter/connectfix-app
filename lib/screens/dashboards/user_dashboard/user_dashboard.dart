import 'package:flutter/material.dart';

import '../../../models/activity.dart';
import '../../../widgets/category_item.dart';
import '../../../widgets/recent_activities.dart';

class UserDashBoard extends StatelessWidget {
  static const routeName = '/user-dashboard';
  UserDashBoard({super.key});

  final List<Activity> activities = [
    Activity(
      image: 'assets/images/painter.png',
      name: 'Matthew',
      profession: 'Painter',
      location: 'Rivers state ,Obio Akpor, Mercyland',
      numberOfJobs: 100,
      price: 15,
      rating: 4.0,
    ),
    Activity(
      image: 'assets/images/plumber.png',
      name: 'Ahmend Usman',
      profession: 'Plumber',
      location: 'Rivers state ,Obio Akpor, Mercyland',
      numberOfJobs: 100,
      price: 15,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Welcome Back'),
                  subtitle: Text(
                    'Victor James.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 246,
                      height: 100,
                      child: Card(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            // vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Available Balance',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '₦1,000.00',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 131,
                        height: 100,
                        child: Card(
                          color: Theme.of(context).primaryColor.withAlpha(150),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                'Add money',
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'What services do you need?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                CategoryItem(),
                const SizedBox(
                  height: 5,
                ),
                const ListTile(
                  title: Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Based on your recent activities'),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 242,
                  // color: Colors.blue,
                  child: ListView.builder(
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      return RecentActivityItems(
                        imageUrl: activities[index].image,
                        name: activities[index].name,
                        profession: activities[index].profession,
                        location: activities[index].location,
                        jobs: activities[index].numberOfJobs,
                        rating: activities[index].rating,
                        rate: activities[index].price,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          items: const [
            BottomNavigationBarItem(
              // backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_view_week_rounded,
                color: Colors.white,
              ),
              // backgroundColor: Colors.white,
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
