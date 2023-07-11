import 'package:flutter/material.dart';
import 'package:manage_moyen/components/balance_card.dart';
import 'package:manage_moyen/components/budget_setting_card.dart';
import 'package:manage_moyen/constants.dart';

class FinanceBalance extends StatelessWidget {
  FinanceBalance({super.key});
  final BudgetList = [
    {
      "label": "Wages",
      "image": "assets/images/Purse.png",
      "date": "Oct 11, 2021",
      "amount": "+200 000",
      "color": Colors.red
    },
    {
      "label": "Health",
      "image": "assets/images/medical_kit.png",
      "date": "Oct 12, 2021",
      "amount": "-50 000",
      "color": const Color.fromARGB(255, 243, 117, 114)
    },
    {
      "label": "Shopping",
      "image": "assets/images/shopping_bag.png",
      "date": "Oct 15, 2021",
      "amount": "-150 000",
      "color": Colors.teal
    },
    {
      "label": "Dividend",
      "image": "assets/images/growth_graph.png",
      "date": "Oct 20, 2021",
      "amount": "+20 000",
      "color": Color.fromARGB(255, 211, 191, 15)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: kBoxLinearGradient,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 40,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TopHeader(),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 120,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Finance Balance",
                              style: kTextLabelBlack,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BalanceCard(
                                  label: "Icome",
                                  amount: "Rp. 3.000000",
                                  color: Colors.green,
                                ),
                                BalanceCard(
                                  label: "Expenditure",
                                  amount: "Rp. 2.00000",
                                  color: Colors.red,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Budget setting",
                              style: kTextLabelBlack,
                            ),
                            Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) {
                                    return BudgetSettingCard(
                                      amount:
                                          BudgetList[index]["amount"] as String,
                                      date: BudgetList[index]["date"] as String,
                                      image:
                                          BudgetList[index]["image"] as String,
                                      label:
                                          BudgetList[index]["label"] as String,
                                      color:
                                          BudgetList[index]["color"] as Color,
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 8.0,
                                    );
                                  },
                                  itemCount: BudgetList.length),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 5,
                child: FloatingActionButton(
                shape: CircleBorder(side: BorderSide.none),
                backgroundColor: Color(0XFFDC0000),
                onPressed: () {},
                child: Icon(Icons.add, color: Colors.white,),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, Raul",
            style: kTextGreating,
          ),
          Text(
            "Welcome back!",
            style: kTextWelcome,
          ),
          Text(
            "Rp. 3.000.0 00",
            style: kTextBalance,
          ),
          Text(
            "your balance",
            style: kTextLabel,
          )
        ],
      ),
    );
  }
}
