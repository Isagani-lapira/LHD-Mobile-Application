import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/designdescription.dart';
import 'package:lhd_app/widget/sipsseries.dart';

class SIPTab extends StatefulWidget {
  const SIPTab({super.key});

  @override
  State<SIPTab> createState() => _SIPTabState();
}

class _SIPTabState extends State<SIPTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          AppString.sipTitle,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const Text(
          AppString.sipSubDesc,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),
        ),
        const DesignDescription(
          title: AppString.interiorTxt,
          descriptions: kInteriorDescrip,
        ),
        const DesignDescription(
          title: AppString.exteriorTxt,
          descriptions: kExteriorDescrip,
        ),
        const Text(
          'More info about SIPS',
          style: TextStyle(
            fontSize: 14.0,
            color: AppColor.secondaryColor,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: kSIPLinks.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.red,
                width: MediaQuery.of(context).size.width / 2,
                child: SIPThumbnail(youtubeLink: kSIPLinks[index]),
              );
            }),
          ),
        )
      ],
    );
  }
}
