import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gencore/bloc/gencore_bloc.dart';
import 'package:gencore/view/list_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp( Sizer(
      builder: (context, orientation, deviceType) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gencore',
          theme: ThemeData.light(),
          home:  BlocProvider(
            create: (context) => GencoreBloc(GencoreInitial()),
            child: const GencoreListView(),
          ),
        );
      }
  ));
}




