import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/discovery_cubit.dart';
import '../cubit/discovery_state.dart';
import 'package:image_picker/image_picker.dart';

class DiscoveryFeatureScreen extends StatelessWidget {
  const DiscoveryFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DiscoveryCubit>();

    return BlocListener<DiscoveryCubit, DiscoveryState>(
      listener: (context, state) {
        if (state is DiscoverySuccessState) {
          context.push('/details', extra: state.result);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Discover Plant")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<DiscoveryCubit, DiscoveryState>(
              builder: (context, state) {
                if (state is DiscoveryImageSelectedState) {
                  return Image.file(state.image, height: 250);
                }
                if (state is DiscoveryErrorState) {
                  return Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  );
                }
                return const Text("No image selected");
              },
            ),
            const SizedBox(height: 30),

            /// 🌿 BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    cubit.pickImage(ImageSource.camera);
                  },
                  child: const Text("Camera"),
                ),
                ElevatedButton(
                  onPressed: () {
                    cubit.pickImage(ImageSource.gallery);
                  },
                  child: const Text("Gallery"),
                ),
                ElevatedButton(
                  onPressed: () {
                    final state = cubit.state;

                    if (state is DiscoveryImageSelectedState) {
                      context.push(
                        '/details',
                        extra: state.image, 
                      );
                    }
                  },
                  child: const Text("Analyze"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
