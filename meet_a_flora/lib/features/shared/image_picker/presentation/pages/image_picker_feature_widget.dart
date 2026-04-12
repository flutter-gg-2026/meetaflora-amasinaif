import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meet_a_flora/features/shared/image_picker/presentation/cubit/image_picker_cubit.dart';
import 'package:meet_a_flora/features/shared/image_picker/presentation/cubit/image_picker_state.dart';

class ImagePickerFeatureWidget extends StatelessWidget {
  const ImagePickerFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImagePickerCubit(GetIt.I.get()),
      child: BlocBuilder<ImagePickerCubit, ImagePickerState>(
        builder: (context, state) {
          final cubit = context.read<ImagePickerCubit>();

          if (state is ImagePickerSuccessState) {
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    state.image,
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Image Selected"),
              ],
            );
          }
          return Column(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "No image selected",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  cubit.pickImage(ImageSource.camera);
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text("Camera"),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  cubit.pickImage(ImageSource.gallery);
                },
                icon: const Icon(Icons.photo_library),
                label: const Text("Gallery"),
              ),
            ],
          );
        },
      ),
    );
  }
}
