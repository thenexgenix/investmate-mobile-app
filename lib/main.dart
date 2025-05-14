import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProjectDetailsPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text("See Details",style: TextStyle(color: Colors.black),),
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
class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project Details"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.eco, size: 50, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              "Loading the project details...",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
