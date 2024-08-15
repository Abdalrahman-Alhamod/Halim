import 'package:flutter/material.dart';

import 'recieve_box_loading.dart';
import 'send_box_loading.dart';

class MessagesListLoading extends StatelessWidget {
  const MessagesListLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          index % 2 == 0 ? const SendBoxLoading() : const RecieveBoxLoading(),
      itemCount: 20,
    );
  }
}
