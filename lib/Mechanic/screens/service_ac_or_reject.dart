import 'package:flutter/material.dart';

class ServiceAcceptorReject extends StatefulWidget {
  const ServiceAcceptorReject({super.key});

  @override
  State<ServiceAcceptorReject> createState() => _ServiceAcceptorRejectState();
}

class _ServiceAcceptorRejectState extends State<ServiceAcceptorReject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.1,
              horizontal: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              Image.asset("assets/profile_large.png"),
              const SizedBox(
                width: 43,
                height: 20,
                child: Text(
                  'Name ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                color: const Color(0xFFCEE2FF),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * 0.1,
                      horizontal: MediaQuery.of(context).size.height * 0.1),
                  child: Column(
                    children: [
                      const RowServiceCard(
                        title: "Problem",
                        subtitle: "Fuelleaking",
                      ),
                      const SizedBox(height: 20),
                      const RowServiceCard(
                          title: "Place", subtitle: "KOzhikode Beach Road"),
                      const SizedBox(height: 20),
                      const RowServiceCard(title: "Date", subtitle: "01/02/23"),
                      const SizedBox(
                        height: 20,
                      ),
                      const RowServiceCard(title: "Time", subtitle: "1:10 pm"),
                      const SizedBox(height: 20),
                      const RowServiceCard(
                          title: "Contact page", subtitle: "9544830133"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF49CD6E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Accept',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 110,
                            height: 40,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFCD4949),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              'Reject ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowServiceCard extends StatelessWidget {
  const RowServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 90,
          height: 14,
          child: Text(
            ': $subtitle ',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
