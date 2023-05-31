import 'package:flutter/material.dart';

import '../models/activity.dart';

class RecentActivityItems extends StatelessWidget {
  final String name;
  final String profession;
  final String location;
  final int jobs;
  final double rating;
  final int rate;
  final String imageUrl;
  const RecentActivityItems(
      {super.key,
      required this.name,
      required this.profession,
      required this.location,
      required this.jobs,
      required this.rating,
      required this.rate,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 385,
      height: 130,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 16,
                  left: 20,
                  bottom: 15,
                ),
                // color: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ), //for the image
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 25,
                  left: 10,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    Text(profession),
                    Text(
                      location,
                      style: TextStyle(fontSize: 8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActivityFooter(
                          numbers: '$jobs',
                          name: 'Jobs',
                        ),
                        ActivityFooter(
                          numbers: '$rating',
                          name: 'Rating',
                        ),
                        ActivityFooter(
                          numbers: '$rate',
                          name: 'Rate',
                        ),
                        Container(
                          width: 68,
                          height: 24,
                          margin: EdgeInsets.only(right: 16),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Book'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // for content on the left
          ],
        ),
      ),
    );
  }
}

class ActivityFooter extends StatelessWidget {
  const ActivityFooter({
    super.key,
    required this.numbers,
    required this.name,
  });

  final String numbers;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        Text('$numbers'),
      ],
    );
  }
}
