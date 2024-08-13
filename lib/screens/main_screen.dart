import 'package:flutter/material.dart';
import 'package:stats_preview_card_component/components/item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(26, 24, 49, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 0),
                  )
                ]),
            clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Colors.deepPurple, BlendMode.color),
                  child: Image.asset("assets/images/Header.jpg"),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(text: "Get "),
                        TextSpan(
                            text: "insights",
                            style: TextStyle(
                              color: Color.fromRGBO(150, 82, 200, 1),
                            )),
                        TextSpan(text: " that help your business grow."),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Discover the benefits of data analytics and make better decisions regarding revenue, customer experience, and overall efficiency.",
                    style: TextStyle(
                      height: 1.6,
                      color: Color.fromRGBO(127, 127, 147, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Item(title: "10k+", caption: "COMPANIES"),
                const Item(title: "314", caption: "TEMPLATES"),
                const Item(title: "12M+", caption: "QUERIES"),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
