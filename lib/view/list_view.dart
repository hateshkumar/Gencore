import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gencore/bloc/gencore_bloc.dart';
import 'package:gencore/model/gencore_model.dart';
import 'package:sizer/sizer.dart';

class GencoreListView extends StatefulWidget {
  const GencoreListView({Key? key}) : super(key: key);

  @override
  _GencoreListViewState createState() => _GencoreListViewState();
}

class _GencoreListViewState extends State<GencoreListView> {
  late double height;
  late double width;
  Color colorCyan = Colors.cyan.shade300;
  late GencoreBloc gencoreBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gencoreBloc = BlocProvider.of<GencoreBloc>(context);
    gencoreBloc.add(GencoreLoadList());
  }

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocBuilder<GencoreBloc,GencoreState>(

        builder: (context, state) {
          if(state is GencoreLoadedSuccess) {
            return body(state.genCoreModel);
          }else if(state is GencoreLoadedFailure)  {
          return buildError(state.msg);
          }else
            return buildLoading();

        }

      )
    );
  }

  Widget body(GenCoreModel genCoreModel) {

    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.h),
      child:genCoreModel.data.isNotEmpty? ListView.builder(
          itemCount: genCoreModel.data.length,
          itemBuilder: (context, index) {
            return Container(
              child: buildListItem(genCoreModel.data[index]),
            );
          }):Center(child: Text("No Data Found!",style: TextStyle(
            fontSize: 16.sp
          ),),),
    ));
  }

  Widget buildListItem(Data data) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: height * 0.012.h,
                  width: width * 0.050.w,
                  margin:
                  const EdgeInsets.only(top: 5, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 5, bottom: 5, left: 1, right: 1),
                    child: Image.network(
                      data.profileRequest.approvedByUser.profileImage,
                      fit: BoxFit.cover,
                      width: width * 0.050.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        data.businessName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.sp),
                      ),
                    ),
                    SizedBox(
                      width: 4.h,
                    ),
                    Icon(
                      Icons.check_circle_outline,
                      color: colorCyan,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                RatingBar(
                  itemSize: 6.w,
                  minRating: 1,
                  initialRating: data.avgRating.toDouble(),
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  ignoreGestures: true,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      empty: const Icon(
                        Icons.star_border_outlined,
                        color: Colors.grey,
                      ),
                      half: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
                  onRatingUpdate: (value) => null,
                ),
                SizedBox(
                  height: 1.7.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "${data.totalFeedbackCount} Feedback Reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: colorCyan),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "${data.totalFeedbackCount==0?"No":data.totalFeedbackCount} jobs performed",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: colorCyan),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: width*0.60,
                  height: 6.h,

                  margin: EdgeInsets.only(left: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: colorCyan,
                  ),
                  child: TextButton(
                    onPressed: () {  },
                    child: Text(
                      "Post Job & Invite to Bid",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.sp
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Divider(
            color: Color(0xFFBDBDBD),
            thickness: 0.5,
          ),
          SizedBox(
            height: 2.h,
          ),
          locationPinWidget("Location", data.profileRequest.approvedByUser.city),
          locationPinWidget("Member since", data.profileRequest.approvedByUser.formattedCreatedAt),
          SizedBox(
            height: 1.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 2.5.h,right: 5.w),
            child:  Text(
              data.businessDetails,
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 4.5.h,
          ),
        ],
      ),
    );
  }

  Widget locationPinWidget(String label, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          Icon(
            Icons.location_on_rounded,
            color: colorCyan,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            "$label ",
            style: TextStyle(fontSize: 11.sp, color: Colors.black),
          ),
          Text(
            " $title",
            style: TextStyle(
                fontSize: 11.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildLoading() {


    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildError(String msg) {
    return Center(
      child: Text("$msg"),
    );
  }
}
