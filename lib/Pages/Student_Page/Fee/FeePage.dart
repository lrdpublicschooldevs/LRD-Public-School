import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Fee/widgets/FeeHeader.dart';
import 'package:myapp/Pages/Student_Page/Fee/widgets/feeBody.dart';

class FeePage extends StatelessWidget {
  const FeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Fee Detail's",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsImage.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, bottom: 20),
            child: ListView(
              children: const [
                FeeHeader(
                  dueAmount: "₹ 43200",
                  paidAmount: "₹ 21600",
                  balanceAmount: "₹ 21600",
                ),
                SizedBox(height: 15),
                FeeBody(
                  installment: "1st Installment",
                  dueAmount: "₹ 7200",
                  paidAmount: "₹ 7200",
                  balanceAmount: "₹ 0",
                  month: "January",
                  date: "20/01/2024",
                ),
                SizedBox(height: 15),
                FeeBody(
                  installment: "2nd Installment",
                  dueAmount: "₹ 7200",
                  paidAmount: "₹ 7200",
                  balanceAmount: "₹ 0",
                  month: "February",
                  date: "20/02/2024",
                ),
                SizedBox(height: 15),
                FeeBody(
                  installment: "3rd Installment",
                  dueAmount: "₹ 7200",
                  paidAmount: "₹ 7200",
                  balanceAmount: "₹ 0",
                  month: "March",
                  date: "20/03/2024",
                ),
                SizedBox(height: 15),
                FeeBody(
                  installment: "4th Installment",
                  dueAmount: "₹ 7200",
                  paidAmount: "₹ 7200",
                  balanceAmount: "₹ 0",
                  month: "April",
                  date: "20/04/2024",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
