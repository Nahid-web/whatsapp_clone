import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/group/repository/group_repository.dart';

final groupControllerProvider = Provider(
  (ref) {
    final groupRepository = ref.read(groupRepositoryProvider);
    return GroupController(groupRepository: groupRepository, ref: ref);
  },
);

class GroupController {
  final GroupRepository groupRepository;
  final Ref ref;

  GroupController({
    required this.groupRepository,
    required this.ref,
  });

  void createGroup(
    BuildContext context,
    String groupName,
    File groupProPic,
    List<Contact> selectedContact,
  ) {
    groupRepository.createGroup(
      context,
      groupName,
      groupProPic,
      selectedContact,
    );
  }
}
