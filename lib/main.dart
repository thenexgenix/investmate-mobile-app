import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:percent_indicator/percent_indicator.dart';
void main() {
runApp(const InvestMateApp());
}

class InvestMateApp extends StatelessWidget {
const InvestMateApp({super.key});


@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'InvestMate01',
debugShowCheckedModeBanner: false,
home: const HomePage(),
);
}
}
Widget buildCard({
  String? title,
  String? subtitle,
  required IconData icon,
  required String title1,
  required String subtitle1,
  required BuildContext context,
}) {
  return InkWell(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.all(20),
            content: Stack(
              children: [
                Positioned(
                  right: -10,
                  top: -10,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, size: 40),
                    SizedBox(height: 10),
                    Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      subtitle!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.tealAccent.shade100, width: 1),
      ),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Icon(icon, size: 40),
            SizedBox(height: 10),
            Text(
              title1,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              subtitle1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
const HomePage({super.key});


@override
Widget build(BuildContext context) {
  final screenWidth= MediaQuery.of(context).size.width;
return Scaffold(
body: Stack(
children: [
// Scrollable content
SingleChildScrollView(
padding: const EdgeInsets.only(top: 120),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Hero image with animation
Center(
child: ClipRRect(
borderRadius: const BorderRadius.only(
topLeft: Radius.circular(60),
bottomRight: Radius.circular(60),
),
child: Image.asset(
'assets/hero_image.jpeg',
width: MediaQuery.of(context).size.width * 0.8,
),
)
    .animate()
    .fadeIn(duration: 500.ms)
    .scale(begin: const Offset(0.8, 0.8)),
),
const SizedBox(height: 40),

// Tag line
const Padding(
padding: EdgeInsets.symmetric(horizontal: 24.0),
child: Text(
"TALK ABOUT FUTURE GROWTH",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w500,
letterSpacing: 1.2,
),
),
).animate().slideX(begin: -1.0, duration: 600.ms),

const SizedBox(height: 10),

// Headline
const Padding(
padding: EdgeInsets.symmetric(horizontal: 24.0),
child: Text(
"Empower Your Investments With Our Platform",
style: TextStyle(
fontSize: 35,
fontWeight: FontWeight.bold,
),
),
).animate().fadeIn(duration: 600.ms).blur(begin: Offset(10, 10)),

const SizedBox(height: 20),

// Description box
Padding(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
child: Container(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(16),
),
child: const Text(
"Discover a unique crowdfunding platform designed for ethical investing. Explore Shariah-compliant projects that align with your valoues and financial goal.",
style: TextStyle(fontSize: 20),
),
),
).animate().slideX(begin: -1.0, duration: 600.ms),

const SizedBox(height: 20),

// Explore Button
Padding(
padding: const EdgeInsets.symmetric(horizontal: 24.0),
child: Container(
padding:
const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
decoration: BoxDecoration(
border: Border.all(color: Colors.black),
borderRadius: BorderRadius.circular(30),
),
child: const Text(
"Explore >",
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
),
),
),
).animate().slideY(begin: 1.0, duration: 600.ms),

const SizedBox(height: 70),
 Center(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: 300,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row 1
          Column(
            children: const [
              Text(
                '1000+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                'Signature every hour',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Row 2
          Column(
            children: const [
              Text(
                '50+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                'Victory each month',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Row 3
          Column(
            children: const [
              Text(
                '100k+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                'Fundraised per year',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(duration: 1000.ms).slideY(begin: 0.3),
  ),
  ),
  //the green box

  Padding(
  padding: const EdgeInsets.all(20),
  child: Column(
  children: [
  buildCard(
  icon: Icons.show_chart,
  title: "Investment Transparency",
  title1: "Investment Transparency",
  subtitle: "Detailed info about Investment Transparency. Includes audit reports, investor dashboards, and more.",
  subtitle1:
  "Full disclosure on all investments, ensuring you know exactly where your money is going.",
  context: context,
  ).animate().slideY(begin: 1, duration: 800.ms, delay: 300.ms),
  buildCard(
  icon: Icons.account_balance,
    title: "Islamic Finance Principles",
    subtitle:"Investments are reviewed by Islamic scholars. We avoid interest-based income or haram industries.",
  title1: "Islamic Finance Principles",
  subtitle1:
  "All investments are vetted to comply with Shariah law and ethical standards.",
  context: context,
  ).animate().slideY(begin: 1, duration: 800.ms, delay: 400.ms),
  buildCard(
  icon: Icons.handshake,
    title: "Diverse Opportunities",
    subtitle:"from real estate to ethical startups, we bring you various halal investment options with different risk levels.",
  title1: "Diverse Opportunities",
  subtitle1:
  "Access a wide range of Halal investment options across various sectors and risk levels.",
  context: context,
  ).animate().slideY(begin: 1, duration: 800.ms, delay: 500.ms),

  ],
  ),
  ),

  Container(
    width: screenWidth,
    color: Colors.grey.shade200,
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        // Top box with images
        Stack(
          children: [
            // Background image box
            Container(
              width: screenWidth,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('assets/bg_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
const SizedBox(height: 12),
            // 2x2 grid of images over the background
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      'assets/image1.png',
                      'assets/image2.png',
                      'assets/image3.png',
                      'assets/image4.png',
                    ].map((imgPath) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imgPath,
                          fit: BoxFit.cover,

                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        )
            .animate()
            .slideX(begin: -1, duration: 800.ms)
            .fadeIn(duration: 800.ms),

        const SizedBox(height: 40),

        // Text 1
        Align(
          alignment: Alignment.centerLeft,
        child: Text(
          "Returns",
          style: TextStyle(

            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),

        ).animate().fadeIn(duration: 600.ms).moveY(begin: 20, curve: Curves.easeOut),

        const SizedBox(height: 12),

        // Text 2
        Text(
          "Fuel Innovation & Secure Your Returns",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
          textAlign: TextAlign.left,
        ).animate().fadeIn(duration: 600.ms).moveY(begin: 30, delay: 200.ms),

        const SizedBox(height: 8),

        // Text 3
        Text(
          "Invest in innovation and secure your future. Our platform offers equity, revenue-sharing, and profit-driven models, ensuring your investments grow alongside visionary ideas.",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ).animate().fadeIn(duration: 600.ms).moveY(begin: 40, delay: 300.ms),

        const SizedBox(height: 24),

// First Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.handshake, color: Colors.green, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Equity-Based Sharing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Own a stake in the next big idea.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, curve: Curves.easeOut)
            .fadeIn(duration: 600.ms),

        const SizedBox(height: 20),

// Second Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.attach_money, color: Colors.green, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Revenue Sharing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Earn from real business success.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, delay: 200.ms)
            .fadeIn(duration: 600.ms),

        const SizedBox(height: 20),

// Third Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.show_chart, color: Colors.green, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Profit-Driven Returns",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Share in the journey, reap the rewards.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, delay: 400.ms)
            .fadeIn(duration: 600.ms),
      ],

    ),
  ),
  Container(
    width: screenWidth,
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const SizedBox(height: 40),

        // Text 1
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Secure",
            style: TextStyle(

              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),

        ).animate().fadeIn(duration: 600.ms).moveY(begin: 20, curve: Curves.easeOut),

        const SizedBox(height: 12),

        // Text 2
        Text(
          "Your Investments Are Our Top Priority",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
          textAlign: TextAlign.left,
        ).animate().fadeIn(duration: 600.ms).moveY(begin: 30, delay: 200.ms),

        const SizedBox(height: 8),

        // Text 3
        Text(
          "We implement cutting-edge security measures to protect your investments. Our platform uses ecryption and multi-factor authentication to ensure your data remains safe.",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ).animate().fadeIn(duration: 600.ms).moveY(begin: 40, delay: 300.ms),

        const SizedBox(height: 24),

// First Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.security, color: Colors.black, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "End-to-End Encryption",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "All user data, transactions, and communications are protected with AES-256 encryption, ensuring that sensitive information remains secure.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, curve: Curves.easeOut)
            .fadeIn(duration: 600.ms),

        const SizedBox(height: 20),

// Second Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.security, color: Colors.black, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Multi-Factor Authentication (MFA)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "To prevent unauthorized access, we enforce MFA, requiring users to verify their identity through multiple authentication steps.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, delay: 200.ms)
            .fadeIn(duration: 600.ms),

        const SizedBox(height: 20),

// Third Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.security, color: Colors.black, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Secure Payment Processing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "We partner with PCI-DSS compliant payment gateways to process all transactions securely, preventing fraud and unauthorized payments.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, delay: 400.ms)
            .fadeIn(duration: 600.ms),


      ],
    ),
  ),
  const SizedBox(height: 30),
  Center(

    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(60),
        bottomRight: Radius.circular(60),
      ),
      child: Image.asset(

        'assets/secure_image.png',
        width: MediaQuery.of(context).size.width * 0.9,
      ),
    )
        .animate()
        .fadeIn(duration: 500.ms)
        .scale(begin: const Offset(0.8, 0.8)),
  ),

  const SizedBox(height: 20),

// Headline
  const Padding(
    padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 30.0),
    child: Text(
      "Projects for Investment",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  const SizedBox(height: 5),

  Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.grey.shade100, // Light gray card background
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/agriculture_image.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Sustainable Agriculture",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "We promote eco-friendly farming practices to ensure food security while protecting the environment. Our focus is on organic growth.",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        ElevatedButton(

          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DroppingLeafScreen(
                  onComplete: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SecondPage()),
                    );
                  },
                ),
              ),
            );
          },
          child: Text('See Details',style: TextStyle(color: Colors.black),),
        ),
      ],
    ),
  ),
  const SizedBox(height: 20),
  Container(
    width: screenWidth,
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const SizedBox(height: 40),




    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Almost Is Never Enough",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
  ),
        Align(
          alignment: Alignment.centerLeft,
        child: Text(
          "Unless You Act Today!",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),

        ),
    ),



        const SizedBox(height: 24),

// First Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.people, color: Colors.black, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Global Community",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("Reach a community that can make us strong and useful",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, curve: Curves.easeOut)
            .fadeIn(duration: 600.ms),

        const SizedBox(height: 30),

// Second Info Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.monetization_on_sharp, color: Colors.black, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Crowdfunding",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Empowering Founders, Engaging Communities",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
            .animate()
            .slideY(begin: 0.3, duration: 600.ms, delay: 200.ms)
            .fadeIn(duration: 600.ms),



      ],
    ),
  ),
  const SizedBox(height: 30),
  Center(

    child: ClipRRect(
      borderRadius: const BorderRadius.only(
       // topLeft: Radius.circular(60),
        //bottomRight: Radius.circular(60),
      ),
      child: Image.asset(

        'assets/join_us.png',
        width: MediaQuery.of(context).size.width * 0.8,
      ),
    )
        .animate()
        .fadeIn(duration: 500.ms)
        .scale(begin: const Offset(0.8, 0.8)),
  ),

// Footer Section
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/logo.png', height: 40),
        ],
      ),
        const SizedBox(height: 20),

        // Newsletter description
        const Text(
          "Subscribe to our newsletter for the latest updates on features and releases.",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10),

        // Email input box
        TextField(
          decoration: InputDecoration(
            hintText: "Your email here",
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
        const SizedBox(height: 10),

        // Join button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          ),
          onPressed: () {
            // handle join logic
          },
          child: const Text(
            "Join",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),

        // Privacy agreement
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black87),
            children: [
              const TextSpan(text: "By subscribing, you agree to our "),
              TextSpan(
                text: "Privacy Policy",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const TextSpan(text: " and consent to receive updates."),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // Quick Links
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Quick Links", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            ...[
              "About Us",
              "Contact Us",
              "Support Center",
              "FAQs",
              "Blog Posts"
            ].map((item) => GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(item),
              ),
            )),
          ],
        ),

        const SizedBox(height: 30),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Resources", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            ...[
              "Invest Safely",
              "Our Team",
              "Success Stories",
              "Community Impact",
              "Investor Tools"
            ].map((item) => GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(item),
              ),
            )),
          ],
        ),// Resources


        const SizedBox(height: 30),

        // Connect With Us
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Connect With Us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Row(
                children: const [
                  Icon(Icons.facebook, size: 20),
                  SizedBox(width: 8),
                  Text("Facebook"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Row(
                children: const [
                  Icon(Icons.camera_alt, size: 20), // substitute for Instagram
                  SizedBox(width: 8),
                  Text("Instagram"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Row(
                children: const [
                  Icon(Icons.alternate_email, size: 20), // substitute for Twitter
                  SizedBox(width: 8),
                  Text("Twitter"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Row(
                children: const [
                  Icon(Icons.business_center, size: 20), // LinkedIn icon substitute
                  SizedBox(width: 8),
                  Text("LinkedIn"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Row(
                children: const [
                  Icon(Icons.play_circle_filled, size: 20), // YouTube
                  SizedBox(width: 8),
                  Text("YouTube"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),

        const Divider(thickness: 1),
        const SizedBox(height: 10),
        const Center(child: Text("© 2024, All rights reserved.")),
      ],
    ),
  ),

],


),
),

// Fixed Logo with shimmer and animation
Positioned(
top: 40,
left: 0,
right: 0,
child: Center(
child: Stack(
alignment: Alignment.center,
children: [
// Base green rectangle with shimmer effect
Shimmer.fromColors(
baseColor: Colors.green.shade100,
highlightColor: Colors.white,
direction: ShimmerDirection.rtl,
child: Container(
height: 70,
width: 200,
padding: const EdgeInsets.symmetric(horizontal: 40),
decoration: BoxDecoration(
color: Colors.green.shade200,
borderRadius: BorderRadius.circular(60),
),
),
),

// Logo on top of the shimmer animation
Image.asset(
'assets/logo.png',
height: 50,
),
],
).animate().slideY(begin: -1.0, duration: 600.ms),
),
),
],
),
);
}
}
class DroppingLeafScreen extends StatefulWidget {
  final VoidCallback onComplete;
  const DroppingLeafScreen({Key? key, required this.onComplete}) : super(key: key);

  @override
  State<DroppingLeafScreen> createState() => _DroppingLeafScreenState();
}

class _DroppingLeafScreenState extends State<DroppingLeafScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: -150, end: 300).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
    Future.delayed(Duration(seconds: 2), widget.onComplete);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Stack(
              children: [
                Positioned(
                  top: _animation.value,
                  left: MediaQuery.of(context).size.width / 2 - 30,
                  child: Icon(Icons.eco, color: Colors.green, size: 60), // Leaf icon
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  final String description = '''
This project aims to revolutionize the renewable energy sector by developing innovative solar panel technology. Our objective is to provide affordable and efficient energy solutions to underserved communities, reducing their reliance on fossil fuels and promoting sustainability. The potential impact of this initiative is significant. By harnessing solar energy, we can decrease energy costs for families, create job opportunities in installation and maintenance, and contribute to a cleaner environment. Our team is committed to making a difference, ensuring that our solutions are accessible and effective. Led by a group of experienced engineers and environmentalists, our team brings a wealth of knowledge and expertise to the project. We have collaborated with local organizations to understand the specific needs of the communities we aim to serve, ensuring that our approach is both practical and impactful. We believe that through community engagement and education, we can empower individuals to take charge of their energy needs. Our project includes workshops and training sessions to equip locals with the skills necessary for installation and upkeep of solar systems.

Invest in the future of farming and help us grow sustainably!
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo

              const SizedBox(height: 100),
              // Title
              Text(
                'Sustainable\nAgriculture',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  height: 1.15,
                ),
              ),
              SizedBox(height: 16),

              // Agriculture Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/agriculture_image.png', // Your image
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),

              // Donation Protected
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.verified_user_outlined, size: 22),
                    SizedBox(width: 8),
                    Text(
                      "Donation Protected",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              Divider(),

              // Description heading
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 2),
                child: Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              SizedBox(height: 2),

              // Description text
              Text(
                description,textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20, height: 1.45),
              ),
              SizedBox(height: 10),

              // Link
              GestureDetector(
                onTap: () async {
                  final url = Uri.parse("https://www.facebook.com/investmate.pda");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  }
                },
                child: Text(
                  "https://www.facebook.com/investmate.pda",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              SizedBox(height: 18),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => ThirdPage()));
                      },
                      child: Text("Invest Now"),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Share.share("Support sustainable agriculture: https://www.facebook.com/investmate.pda");
                      },
                      child: Text("Share"),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
              InvestContactSection(),
            ],


          ),
        ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
// Base green rectangle with shimmer effect
                  Shimmer.fromColors(
                    baseColor: Colors.green.shade100,
                    highlightColor: Colors.white,
                    direction: ShimmerDirection.rtl,
                    child: Container(
                      height: 70,
                      width: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),

// Logo on top of the shimmer animation
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                  ),
                ],
              ).animate().slideY(begin: -1.0, duration: 600.ms),
            ),
          ),
    ],
      ),
    );
  }
}


class InvestContactSection extends StatelessWidget {
  const InvestContactSection({Key? key}) : super(key: key);

  // Location link
  final String mapsUrl = "https://maps.app.goo.gl/mm7TRKQKwiGqZuuJ6";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 1.2, height: 32),

        // FUNDRAISING CARD
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1.3),
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Funds Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Stats
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Funds Raised", style: TextStyle(fontSize: 15)),
                        SizedBox(height: 3),
                        Text(
                          "\$5300 USD\ninvested",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, height: 1),
                        ),
                        SizedBox(height: 2),
                        Text("\$80k goal", style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  // Progress Ring
                  CircularPercentIndicator(
                    radius: 38,
                    lineWidth: 7,
                    percent: 0.56,
                    progressColor: Colors.green,
                    backgroundColor: Colors.grey.shade300,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      "56%",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14),

              // Invest Now Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ThirdPage()), // use your actual ThirdPage
                    );
                  },
                  child: Text("Invest Now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              SizedBox(height: 9),

              // People invested
              Row(
                children: [
                  Icon(Icons.people_alt_outlined, size: 21),
                  SizedBox(width: 8),
                  Text("30 people invested", style: TextStyle(fontSize: 15)),
                ],
              ),
              SizedBox(height: 8),

              // Goal
              Row(
                children: [
                  Text("Goal", style: TextStyle(fontSize: 15)),
                  SizedBox(width: 8),
                  Text("25", style: TextStyle(fontSize: 21, color: Colors.teal, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),

              // Contributors
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contributors", style: TextStyle(fontSize: 15)),
                  SizedBox(height: 2),
                  Text(
                    "Bryan dash",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("\$95 • Recent donation", style: TextStyle(color: Colors.black54, fontSize: 14)),
                ],
              ),

              SizedBox(height: 12),

              // Top Donation Button
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Top donation feature coming soon!")),
                    );
                  },
                  icon: Icon(Icons.star, color: Colors.amber),
                  label: Text("Top Donation",style: TextStyle(color: Colors.black),),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Divider
        Divider(thickness: 1.2, height: 32),

        // CONNECT SECTION
        Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                "CONNECT", textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1.2,
                    color: Colors.grey[700],

                ),
              ),
              SizedBox(height: 5),
              Text(
                "Get in Touch" ,textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              SizedBox(height: 4),
              Text(
                "We're here to answer your questions and\nprovide more information about our projects",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.25),
              ),

            ],

          ),
        ),
    ),

        // MAP
        SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              // Mini Google Map preview as image (replace with WebView for actual embedded map)
              Image.network(
                'https://maps.googleapis.com/maps/api/staticmap?center=22.4617,91.9707&zoom=15&size=600x260&markers=color:red%7Clabel:C%7C22.4617,91.9707&key=YOUR_API_KEY', // Use Google Static Maps API for preview
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 160,
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: Text('Map preview unavailable'),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: ElevatedButton(
                  onPressed: () async {
                    if (await canLaunchUrl(Uri.parse(mapsUrl))) {
                      await launchUrl(Uri.parse(mapsUrl), mode: LaunchMode.externalApplication);
                    }
                  },
                  child: Text("View larger map", style: TextStyle(fontSize: 13)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    elevation: 2,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 16),

        // CONTACT INFO
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.email_outlined, size: 20),
                SizedBox(width: 10),
                Text("investmate.info@gmail.com", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Icon(Icons.phone_outlined, size: 20),
                SizedBox(width: 10),
                Text("+880-987-654-321", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 20),
                SizedBox(width: 10),
                Text("Chittagong, Bangladesh", style: TextStyle(fontSize: 15)),
              ],
            ),

          ],
        ),

        SizedBox(height: 12),

        Divider(thickness: 1.2, height: 32),
        SizedBox(height: 12),
        FAQSection(),
        // Footer Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/logo.png', height: 40),
                ],
              ),
              const SizedBox(height: 20),

              // Newsletter description
              const Text(
                "Subscribe to our newsletter for the latest updates on features and releases.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Email input box
              TextField(
                decoration: InputDecoration(
                  hintText: "Your email here",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                ),
              ),
              const SizedBox(height: 10),

              // Join button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                onPressed: () {
                  // handle join logic
                },
                child: const Text(
                  "Join",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),

              // Privacy agreement
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black87),
                  children: [
                    const TextSpan(text: "By subscribing, you agree to our "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(text: " and consent to receive updates."),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Quick Links
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Quick Links", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 10),
                  ...[
                    "About Us",
                    "Contact Us",
                    "Support Center",
                    "FAQs",
                    "Blog Posts"
                  ].map((item) => GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(item),
                    ),
                  )),
                ],
              ),

              const SizedBox(height: 30),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Resources", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 10),
                  ...[
                    "Invest Safely",
                    "Our Team",
                    "Success Stories",
                    "Community Impact",
                    "Investor Tools"
                  ].map((item) => GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(item),
                    ),
                  )),
                ],
              ),// Resources


              const SizedBox(height: 30),

              // Connect With Us
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Connect With Us",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.facebook, size: 20),
                        SizedBox(width: 8),
                        Text("Facebook"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera_alt, size: 20), // substitute for Instagram
                        SizedBox(width: 8),
                        Text("Instagram"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.alternate_email, size: 20), // substitute for Twitter
                        SizedBox(width: 8),
                        Text("Twitter"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.business_center, size: 20), // LinkedIn icon substitute
                        SizedBox(width: 8),
                        Text("LinkedIn"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.play_circle_filled, size: 20), // YouTube
                        SizedBox(width: 8),
                        Text("YouTube"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              const Divider(thickness: 1),
              const SizedBox(height: 10),
              const Center(child: Text("© 2024, All rights reserved.")),
            ],
          ),
        ),

      ],

    );
  }
}


class FAQSection extends StatefulWidget {
  @override
  State<FAQSection> createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  int openIndex = -1; // -1 means none open

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        SizedBox(height: 16),
        Text(
          'FAQs',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        SizedBox(height: 7),
        Text(
          'Answers to common questions about\nour projects and operations.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.3),
        ),
        SizedBox(height: 12),

        // FAQ List
        ...List.generate(faqData.length, (index) {
          final isOpen = openIndex == index;
          return AnimatedContainer(
            duration: Duration(milliseconds: 250),
            margin: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.3),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: isOpen
                  ? [BoxShadow(color: Colors.black12, blurRadius: 6)]
                  : [],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  setState(() {
                    openIndex = isOpen ? -1 : index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          faqData[index]['question']!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                        trailing: Icon(
                          isOpen
                              ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      ),
                      if (isOpen)
                        Padding(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 16),
                          child: Text(
                            faqData[index]['answer']!,
                            style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.4),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        SizedBox(height: 10),
        Divider(thickness: 1.2, height: 32),
      ],
    );
  }
}
final List<Map<String, String>> faqData = [
  {
    'question': 'What is crowdfunding?',
    'answer': 'Crowdfunding is a method of raising capital through the collective effort of individuals. It allows many people to contribute small amounts of money towards a project or venture, making it accessible for various initiatives. This approach democratizes funding and empowers entrepreneurs to realize their ideas.'
  },
  {
    'question': 'How do I invest?',
    'answer': 'To invest, simply create an account on our platform. Browse through the available projects and select one that aligns with your interests. Follow the prompts to complete your investment securely.'
  },
  {
    'question': 'What are expected returns?',
    'answer': 'Expected returns vary by project and are influenced by factors such as duration and risk level. Each project listing includes detailed financial projections to help you make informed decisions. Our investment calculator can also assist you in estimating potential earnings.'
  },
  {
    'question': 'Is my investment safe?',
    'answer': 'We prioritize transparency and compliance with Islamic finance principles to ensure the safety of your investment. Each project undergoes a thorough vetting process, and we provide regular updates on performance. Additionally, you can track your investments through your user dashboard.'
  },
  {
    'question': 'Can I withdraw funds?',
    'answer': 'Withdrawal policies depend on the specific terms of each project. Generally, you can withdraw your funds after the project reaches its funding goal or upon project completion. Please refer to the project details for more information.'
  },
];


class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();

}

class _ThirdPageState extends State<ThirdPage> {
  // Controllers for text fields
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final houseController = TextEditingController();
  final aptController = TextEditingController();
  final cityController = TextEditingController();
  final districtController = TextEditingController();
  final postcodeController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  String selectedCountry = "Bangladesh";
  String selectedProject = '';
  int selectedAmount = 5000;
  bool agreeTerms = false;

  final List<int> amounts = [5000, 10000, 25000, 100000];

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    houseController.dispose();
    aptController.dispose();
    cityController.dispose();
    districtController.dispose();
    postcodeController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 100),
              // Banner
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  color: Colors.brown.shade100,
                  child: Center(
                    child: Text(
                      'Submit Your Interest',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 13),

              // Name Fields
              Row(
                children: [
                  Expanded(
                    child: _formTextField(
                        controller: firstNameController, label: "First Name *"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: _formTextField(
                        controller: lastNameController, label: "Last Name *"),
                  ),
                ],
              ),
              SizedBox(height: 11),
              // Country Dropdown
              DropdownButtonFormField<String>(
                value: selectedCountry,
                decoration: _dropdownDecoration(),
                items: [
                  DropdownMenuItem(value: "Bangladesh", child: Text("Bangladesh")),
                  DropdownMenuItem(value: "India", child: Text("India")),
                  DropdownMenuItem(value: "Pakistan", child: Text("Pakistan")),
                ],
                onChanged: (val) => setState(() => selectedCountry = val!),
              ),
              SizedBox(height: 11),
              _formTextField(
                  controller: houseController,
                  label: "House number and street name *"),
              SizedBox(height: 11),
              _formTextField(
                  controller: aptController,
                  label: "Apartment, suite, unit etc. (optional)"),
              SizedBox(height: 11),
              _formTextField(controller: cityController, label: "Town / City *"),
              SizedBox(height: 11),
              _formTextField(controller: districtController, label: "District"),
              SizedBox(height: 11),
              _formTextField(
                  controller: postcodeController,
                  label: "Postcode / ZIP (optional)"),
              SizedBox(height: 11),
              _formTextField(controller: phoneController, label: "Phone *"),
              SizedBox(height: 11),
              _formTextField(controller: emailController, label: "Email *"),
              SizedBox(height: 19),
              Text(
                'Interested Project *',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              DropdownButtonFormField<String>(
                value: selectedProject.isEmpty ? null : selectedProject,
                decoration: _dropdownDecoration(
                  hint: "Select a project you're interested",
                ),
                items: [
                  DropdownMenuItem(value: "Sustainable Agriculture", child: Text("Sustainable Agriculture")),
                  DropdownMenuItem(value: "Solar Panel", child: Text("Solar Panel")),
                  DropdownMenuItem(value: "Tech Startup", child: Text("Tech Startup")),
                ],
                onChanged: (val) => setState(() => selectedProject = val!),
              ),
              SizedBox(height: 19),
              Text(
                'Select Amount',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: amounts.map((amt) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: GestureDetector(
                        onTap: () => setState(() => selectedAmount = amt),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: selectedAmount == amt
                                    ? Colors.green
                                    : Colors.grey.shade400,
                                width: selectedAmount == amt ? 2 : 1.2),
                            color: selectedAmount == amt
                                ? Colors.green.shade100
                                : Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(vertical: 13),
                          alignment: Alignment.center,
                          child: Text(
                            '$amt',
                            style: TextStyle(
                              fontSize: 16,
                              color: selectedAmount == amt
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('$selectedAmount',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17, color: Colors.green)),
                ],
              ),
              SizedBox(height: 15),
              // Terms checkbox
              Row(
                children: [
                  Checkbox(
                    value: agreeTerms,
                    onChanged: (val) => setState(() => agreeTerms = val!),
                  ),
                  Flexible(
                    child: Text(
                      "I agree to the terms and conditions",
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              SizedBox(height: 13),
              // Submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: agreeTerms ? _submitForm : null,
                  child: Text(
                    'Submit Interest',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(vertical: 17),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/logo.png', height: 40),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Newsletter description
                    const Text(
                      "Subscribe to our newsletter for the latest updates on features and releases.",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),

                    // Email input box
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Your email here",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Join button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      ),
                      onPressed: () {
                        // handle join logic
                      },
                      child: const Text(
                        "Join",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Privacy agreement
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black87),
                        children: [
                          const TextSpan(text: "By subscribing, you agree to our "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const TextSpan(text: " and consent to receive updates."),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Quick Links
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Quick Links", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 10),
                        ...[
                          "About Us",
                          "Contact Us",
                          "Support Center",
                          "FAQs",
                          "Blog Posts"
                        ].map((item) => GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(item),
                          ),
                        )),
                      ],
                    ),

                    const SizedBox(height: 30),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Resources", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 10),
                        ...[
                          "Invest Safely",
                          "Our Team",
                          "Success Stories",
                          "Community Impact",
                          "Investor Tools"
                        ].map((item) => GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(item),
                          ),
                        )),
                      ],
                    ),// Resources


                    const SizedBox(height: 30),

                    // Connect With Us
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Connect With Us",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 10),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.facebook, size: 20),
                              SizedBox(width: 8),
                              Text("Facebook"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.camera_alt, size: 20), // substitute for Instagram
                              SizedBox(width: 8),
                              Text("Instagram"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.alternate_email, size: 20), // substitute for Twitter
                              SizedBox(width: 8),
                              Text("Twitter"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.business_center, size: 20), // LinkedIn icon substitute
                              SizedBox(width: 8),
                              Text("LinkedIn"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),

                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (_) => const HomePage()));
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.play_circle_filled, size: 20), // YouTube
                              SizedBox(width: 8),
                              Text("YouTube"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    const Divider(thickness: 1),
                    const SizedBox(height: 10),
                    const Center(child: Text("© 2024, All rights reserved.")),
                  ],
                ),
              ),

            ],
          ),
        ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
// Base green rectangle with shimmer effect
                  Shimmer.fromColors(
                    baseColor: Colors.green.shade100,
                    highlightColor: Colors.white,
                    direction: ShimmerDirection.rtl,
                    child: Container(
                      height: 70,
                      width: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),

// Logo on top of the shimmer animation
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                  ),
                ],
              ).animate().slideY(begin: -1.0, duration: 600.ms),
            ),
          ),
    ],
      ),
    );
  }

  Widget _formTextField({
    required TextEditingController controller,
    required String label,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(width: 1.3)),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      ),
    );
  }

  InputDecoration _dropdownDecoration({String? hint}) {
    return InputDecoration(
      labelText: hint,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(width: 1.3)),
      contentPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
    );
  }

  void _submitForm() {
    // TODO: Implement real submission
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Interest Submitted!"),
        content: Text("Thank you for your interest. Our team will contact you soon."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          )
        ],
      ),
    );
  }
}