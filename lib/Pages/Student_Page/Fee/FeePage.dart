import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Fee/widgets/FeePayDetail.dart';
import 'package:myapp/Pages/Student_Page/Fee/widgets/FeePayDownload.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

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
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                FeePayDetail(
                  receiptNo: "#987132",
                  month: "July",
                  paymentDate: "30 July 2024",
                  pendingAmount: "₹ 2000",
                  primaryBtn: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryBtn(
                        btnName: "Pay Now",
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                FeePayDownload(
                  receiptNo: "#989421",
                  month: "June",
                  paymentDate: "24 June 2024",
                  paymentAmount: "₹ 2000",
                  paymentMode: "Cash",
                  primaryBtn: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryBtn(
                        btnName: "Download Receipt",
                        ontap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
