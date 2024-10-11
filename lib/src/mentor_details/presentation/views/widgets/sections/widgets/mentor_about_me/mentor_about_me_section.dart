import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../manager/mentor_details_cubit/mentor_details_cubit.dart';
import '../../../../../../data/models/mentor_details_model.dart';

class MentorAboutMeSection extends StatelessWidget {
  const MentorAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    MentorDetailsModel mentorDetailsModel =
        context.read<MentorDetailsCubit>().mentorDetails ??
            const MentorDetailsModel();
    return BlocBuilder<MentorDetailsCubit, MentorDetailsState>(
      buildWhen: context.read<MentorDetailsCubit>().buildMentorDetailsnWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchMentorDetailsSuccess: (stateMentorDetailsModel, message) {
            mentorDetailsModel = stateMentorDetailsModel;
          },
        );
        return context.read<MentorDetailsCubit>().buildMentorAboutSection(
              context: context,
              state: state,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    mentorDetailsModel.experience ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    mentorDetailsModel.about ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
      },
    );
  }
}
