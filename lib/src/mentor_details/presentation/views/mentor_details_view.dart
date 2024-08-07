import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import 'widgets/mentor_details_view/mentor_details_app_bar.dart';
import 'widgets/mentor_details_body.dart';

class MentorDetailsView extends StatelessWidget {
  const MentorDetailsView({super.key, required this.mentorId});
  final int mentorId;
  @override
  Widget build(BuildContext context) {
    context.read<MentorDetailsCubit>().mentorId = mentorId;
    context.read<MentorDetailsCubit>().getMentorDetails();
    return const Scaffold(
      appBar: MentorDetailsAppBar(),
      body: MentorDetailsBody(),
    );
  }
}
