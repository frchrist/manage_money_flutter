import "package:flutter/material.dart";
import "package:manage_moyen/constants.dart";

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/home_bg.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Positioned(
                      width: 300,
                      top: 25,
                      right: 40,
                      child: Image(
                        image: AssetImage("assets/images/pana.png"),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Let's",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                    Text(
                      "Manage",
                      style: TextStyle(fontSize: 45),
                    ),
                    Row(
                      children: [
                        Text(
                          "Money",
                          style: TextStyle(fontSize: 45, color: Colors.red),
                        ),
                        Text(
                          " with us",
                          style: TextStyle(fontSize: 45),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/balance");
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      gradient: kBoxLinearGradient,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: kBoxLinearGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 50),
        child: Image.asset("assets/images/pana.png"),
      ),
    );
  }
}
