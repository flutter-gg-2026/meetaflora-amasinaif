import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/details/presentation/cubit/details_cubit.dart';
import 'package:meet_a_flora/features/details/presentation/cubit/details_state.dart';

class DetailsFeatureScreen extends StatelessWidget {
  const DetailsFeatureScreen({super.key, required this.image});
  final File image;
  
  @override
  Widget build(BuildContext context) {
      final _ = context.read<DetailsCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Plant Analysis')),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
        

          // 🌿 SUCCESS STATE
          if (state is DetailsSuccessState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // IMAGE
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      image,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // TITLE
                  const Text(
                    "AI Analysis Result",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // RESULT TEXT
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        state.result,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          // 🌿 ERROR STATE
          if (state is DetailsErrorState) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
          // 🌿 DEFAULT
          return const SizedBox();
        },
      ),
    );
  }
}
        