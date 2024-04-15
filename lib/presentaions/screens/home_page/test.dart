import 'package:color_blindness/presentaions/widgets/imports.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(leadingWidth: 24.w,
          title:Text( AppString.test,)),
        body: Padding(
          padding:  EdgeInsets.all(ScreenUtil().setWidth(24)),
          child: ListView.separated(
            itemBuilder: (context, index) => const CustomTestContainer(),
            itemCount: 4,
            separatorBuilder: (context, index) => SizedBox(height: 20.h,),
          ),
        ));
  }
}

