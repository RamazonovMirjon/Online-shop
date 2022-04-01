import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech/core/constants/colors_const.dart';
import 'package:tech/widgets/text_style.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(const BoxConstraints(),
        designSize: const Size(414, 896),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);

    return Scaffold(
      backgroundColor: ColorConst.kSplash,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: ScreenUtil().setHeight(70),
            right: ScreenUtil().setWidth(50),
            left: ScreenUtil().setWidth(50),
            child: myText(
                text: "Find your Gadget", size: 65, weight: FontWeight.w800),
          ),
          Positioned(
              top: ScreenUtil().setHeight(179),
              bottom: ScreenUtil().setHeight(231),
              child: const Image(
                image: AssetImage("assets/images/Saly-19.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              )),
          _getStartedBotton,
        ],
      ),
    );
  }

  Positioned get _getStartedBotton => Positioned(
            bottom: ScreenUtil().setHeight(122),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    fixedSize: Size(ScreenUtil().setWidth(314),
                        ScreenUtil().setHeight(70)),
                    alignment: Alignment.center,
                    primary: ColorConst.kWhite),
                onPressed: () {},
                child: myText(
                  text: "get started",
                  size: 20,
                  color: ColorConst.kPrimary,
                  weight: FontWeight.w700,
                )));
  }
}
