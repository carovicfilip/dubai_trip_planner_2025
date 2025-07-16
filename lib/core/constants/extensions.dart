// import 'dart:io';
// import 'dart:typed_data';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
//
// extension FileUtils on String? {
//   Future<double> get getFileSize async {
//     if ((this ?? '').isEmpty) return 0;
//     File file = File(this!);
//     int bytes = await file.length();
//     if (bytes <= 0) return 0;
//     double sizeInMb = bytes / (1024 * 1024);
//     return sizeInMb;
//   }
//
//   Uint8List decodeImage() {
//     Uint8List? image = base64Decode(this?.replaceAll(RegExp(r'\s+'), '') ?? '');
//
//     return image;
//   }
//
//   Future<FileData> encodeImage() async {
//     String name = DateTime.now().microsecondsSinceEpoch.toString() + generateRandomString(7);
//     String? getMimeTypeFromExtension() {
//       if (this == null) return null;
//
//       final extension = this!.split('.').last.toLowerCase();
//
//       const mimeTypes = {
//         // Images
//         'jpg': 'image/jpg',
//         'jpeg': 'image/jpeg',
//         'png': 'image/png',
//         'gif': 'image/gif',
//         'tiff': 'image/tiff',
//         'raw': 'image/x-raw',
//         'webp': 'image/webp',
//         'bmp': 'image/bmp',
//         'svg': 'image/svg+xml',
//         // Audio
//         'mp3': 'audio/mpeg',
//         'm4a': 'audio/mp4',
//         'wav': 'audio/wav',
//         'flac': 'audio/flac',
//         // Video
//         'mp4': 'video/mp4',
//         'avi': 'video/x-msvideo',
//         'mkv': 'video/x-matroska',
//         'mov': 'video/quicktime',
//         'wmv': 'video/x-ms-wmv',
//         'avchd': 'video/avchd',
//         'flv': 'video/x-flv',
//         // Files
//         'psd': 'image/vnd.adobe.photoshop',
//         'pdf': 'application/pdf',
//         'doc': 'application/msword',
//         'docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
//         'odt': 'application/vnd.oasis.opendocument.text',
//         'htm': 'text/html',
//         'html': 'text/html',
//         'xml': 'application/xml',
//         'csv': 'text/csv',
//         'xls': 'application/vnd.ms-excel',
//         'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
//         'txt': 'text/plain',
//         'ppt': 'application/vnd.ms-powerpoint',
//         'pptx': 'application/vnd.openxmlformats-officedocument.presentationml.presentation',
//         'odp': 'application/vnd.oasis.opendocument.presentation',
//         'key': 'application/vnd.apple.keynote',
//       };
//
//       return mimeTypes[extension];
//     }
//
//     final file = File(this!);
//
//     // 1. Read the file as bytes and encode to Base64
//     final bytes = await file.readAsBytes();
//
//     final base64Bytes = base64Encode(bytes);
//
//     return FileData(
//       bytes: base64Bytes,
//       contentType: getMimeTypeFromExtension(),
//       name: name,
//     );
//   }
//
//   String getFileType() {
//     if (this == null || this!.isEmpty) return "unknown";
//
//     final extension = this!.split('.').last.toLowerCase();
//
//     const audioExtensions = {'mp3', 'm4a', 'wav', 'flac'};
//     const documentExtensions = {
//       'pdf',
//       'doc',
//       'docx',
//       'odt',
//       'htm',
//       'html',
//       'xml',
//       'csv',
//       'xls',
//       'xlsx',
//       'ppt',
//       'pptx',
//       'odp',
//       'key'
//     };
//     const imageExtensions = {'jpg', 'jpeg', 'png', 'gif', 'tiff', 'raw', 'webp', 'bmp', 'svg'};
//     const noteExtensions = {'txt'};
//     const videoExtensions = {'mp4', 'avi', 'mkv', 'mov', 'wmv', 'avchd', 'flv'};
//
//     if (audioExtensions.contains(extension)) return "audio";
//     if (documentExtensions.contains(extension)) return "document";
//     if (imageExtensions.contains(extension)) return "image";
//     if (noteExtensions.contains(extension)) return "note";
//     if (videoExtensions.contains(extension)) return "video";
//
//     return "unknown";
//   }
//
//   String getFileName() {
//     String name = DateTime.now().microsecondsSinceEpoch.toString() + generateRandomString(7);
//     return name;
//   }
//
//   getLanguageByCode() {
//     switch (this) {
//       case 'en':
//         return const Language(id: 1, name: 'English', code: 'en');
//       case 'de':
//         return const Language(id: 1, name: 'German', code: 'de');
//       case 'fr':
//         return const Language(id: 1, name: 'French', code: 'fr');
//       case 'it':
//         return const Language(id: 4, name: 'Italian', code: 'it');
//       case 'es':
//         return const Language(id: 5, name: 'Spanish', code: 'es');
//     }
//   }
//
//   String trimUuidSuffix() {
//     final regex = RegExp(r'_[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$');
//     return this?.replaceFirst(regex, '') ?? '';
//   }
//
//   PaymentPlan getPaymentPlan() {
//     switch (this) {
//       case 'F1':
//         return PaymentPlan(id: 0, name: 'F1', displayName: 'Basic', storageSpace: getStorageSize('F1'));
//       case 'S1':
//         return PaymentPlan(id: 1, name: 'S1', displayName: 'Storage', storageSpace: getStorageSize('S1'));
//       case 'B1':
//         return PaymentPlan(id: 2, name: 'B1', displayName: 'Business', storageSpace: getStorageSize('B1'));
//       case 'U1':
//         return PaymentPlan(id: 3, name: 'U1', displayName: 'Unlimited', storageSpace: getStorageSize('U1'));
//       default:
//         return PaymentPlan(id: 0, name: 'F1', displayName: 'Basic', storageSpace: getStorageSize('F1'));
//     }
//   }
//
//   getProductId() {
//     if (this == 'S1' && Platform.isIOS) {
//       return 'S1';
//     } else if (this == 'S1' && Platform.isAndroid) {
//       return 's1:s1';
//     } else if (this == 'B1' && Platform.isIOS) {
//       return 'B1';
//     } else if (this == 'B1' && Platform.isAndroid) {
//       return 'b1:b1';
//     }
//   }
//
//   getProductIdDev() {
//     if (this == 'S1' && Platform.isIOS) {
//       return 'S1S1';
//     } else if (this == 'B1' && Platform.isIOS) {
//       return 'B1B1';
//     } else if (this == 'S1' && Platform.isAndroid) {
//       return 's1:s1';
//     } else if (this == 'B1' && Platform.isAndroid) {
//       return 'b1:b1';
//     }
//   }
//
//   getSubscriptionIdDev() {
//     if (this == 'S1' && Platform.isIOS) {
//       return 'S1S1';
//     } else if (this == 'B1' && Platform.isIOS) {
//       return 'B1B1';
//     } else if (this == 'S1' && Platform.isAndroid) {
//       return 's1:s1';
//     } else if (this == 'B1' && Platform.isAndroid) {
//       return 'b1:b1';
//     }
//   }
//
//   getSubscriptionId() {
//     if (this == 'S1' && Platform.isIOS) {
//       return 'S1';
//     } else if (this == 'S1' && Platform.isAndroid) {
//       return 's1';
//     } else if (this == 'B1' && Platform.isIOS) {
//       return 'B1';
//     } else if (this == 'B1' && Platform.isAndroid) {
//       return 'b1';
//     }
//   }
// }
//
// extension IntegerExtension on int {
//   DateTime formatDateTime() {
//     DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this);
//
//     return dateTime;
//   }
//
//   String formatDateWithDash() {
//     DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this);
//
//     String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);
//
//     return formattedDate;
//   }
//
//   String formatDateForChat() {
//     DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this);
//     final DateFormat formatter = DateFormat('MMMM d, y - HH:mm');
//     return formatter.format(dateTime);
//   }
//
//   String formatAsTime() {
//     final dateTime = DateTime.fromMillisecondsSinceEpoch(this);
//     return DateFormat.Hm().format(dateTime); // returns '21:30' style
//   }
// }
//
// extension ListExtension<T> on List<T>? {
//   isNotBlank() => this != null && this!.isNotEmpty;
//
//   isBlank() => this == null || this!.isEmpty;
// }
//
// extension TeamDataExtension on TeamData {
//   FormData createFormDataFromTeamData() {
//     // Convert the file to MultipartFile
//     MultipartFile? filePart;
//     if (file != null) {
//       filePart = MultipartFile.fromBytes(
//         base64Decode(file!.bytes),
//         filename: file!.name,
//         contentType: DioMediaType(
//           file!.contentType!.split('/')[0],
//           file!.contentType!.split('/')[1],
//         ),
//       );
//     }
//
//     // Extract team members data
//     List<String> teamMembersEmails = [];
//     List<String> teamMembersWritePermissions = [];
//     for (var i = 0; i < teamMembers.length; i++) {
//       teamMembersEmails.add(teamMembers[i].email ?? '');
//       teamMembersWritePermissions.add(teamMembers[i].writePermission ? '1' : '0');
//     }
//
//     // Convert objectIds to a comma-separated string
//     String selectedObjects = objectIds.join(',');
//
//     // Create the FormData map
//     return FormData.fromMap({
//       if (filePart != null) 'file': filePart,
//       'id': id,
//       'name': name,
//       'description': description,
//       'objectIds': selectedObjects,
//       ...Map.fromIterables(
//         List.generate(teamMembers.length, (i) => 'teamMembers[$i].email'),
//         teamMembersEmails,
//       ),
//       ...Map.fromIterables(
//         List.generate(teamMembers.length, (i) => 'teamMembers[$i].writePermission'),
//         teamMembersWritePermissions,
//       ),
//     });
//   }
// }
//
// extension ObjectDataExtension on ObjectData {
//   FormData createFormDataFromObjectData() {
//     MultipartFile? filePart;
//     if (file != null) {
//       filePart = MultipartFile.fromBytes(
//         base64Decode(file!.bytes),
//         filename: file!.name,
//         contentType: DioMediaType(
//           file!.contentType!.split('/')[0],
//           file!.contentType!.split('/')[1],
//         ),
//       );
//     }
//
//     // Create the FormData map
//     return FormData.fromMap({
//       if (filePart != null) 'file': filePart,
//       'objectId': id,
//       'title': title,
//       'description': description,
//       'moreInfo': moreInfo,
//       'location': location,
//       'latitude': latitude,
//       'longitude': longitude,
//     });
//   }
// }
//
// extension ObjectPlanExtension on Plan {
//   FormData createFormDataFromPlanData({required int objectId, bool update = false}) {
//     MultipartFile? filePart;
//     if (fileData != null) {
//       filePart = MultipartFile.fromBytes(
//         base64Decode(fileData!.bytes),
//         filename: fileData!.name,
//         contentType: DioMediaType(
//           fileData!.contentType!.split('/')[0],
//           fileData!.contentType!.split('/')[1],
//         ),
//       );
//     }
//
//     // Create the FormData map
//     return FormData.fromMap(
//       {
//         'file': filePart,
//         if (update) 'planId': id,
//         'name': name,
//         'objectId': objectId,
//         // 'location': location,
//         // 'latitude': latitude,
//         // 'longitude': longitude,
//       },
//     );
//   }
// }
//
// extension ObjectRoomExtension on Room {
//   FormData createFormDataFromRoomData({required int planId}) {
//     return FormData.fromMap(
//       {
//         "roomId": id,
//         "planId": planId,
//         "name": name,
//         "description": description,
//         "markerDx": markerDx,
//         "markerDy": markerDy,
//         "markerDeviceWidth": markerDeviceWidth
//       },
//     );
//   }
// }
//
// extension MediaExtension on MediaDataModel {
//   FormData createFormDataFromMedia() {
//     MultipartFile? filePart;
//     if (fileData != null) {
//       filePart = MultipartFile.fromBytes(
//         base64Decode(fileData!.bytes),
//         filename: fileData!.name,
//         contentType: DioMediaType(
//           fileData!.contentType!.split('/')[0],
//           fileData!.contentType!.split('/')[1],
//         ),
//       );
//     }
//
//     final progressTagIds = progressTags?.map((tag) => tag.id).toList() ?? [];
//     final customTagIds = tags?.map((tag) => tag.id).toList() ?? [];
//
//     String progressTagsList = progressTagIds.join(',');
//     String customTagsList = customTagIds.join(',');
//     // Create the FormData map
//     return FormData.fromMap(
//       {
//         'id': id,
//         'roomId': roomId,
//         'type': type,
//         'name': name,
//         'comment': comment,
//         'markerDx': markerDx,
//         'markerDy': markerDy,
//         'markerDeviceWidth': markerDeviceWidth,
//         'progressTags': progressTagsList,
//         'tags': customTagsList,
//         'file': filePart
//       },
//     );
//   }
//
//   String getAnalyticsEventName() {
//     switch (type) {
//       case 'audio':
//         return AnalyticsEvents.voiceNoteUploaded;
//
//       case 'document':
//         return AnalyticsEvents.fileUploaded;
//
//       case 'image':
//         return AnalyticsEvents.photoUploaded;
//
//       case 'note':
//         return AnalyticsEvents.noteUploaded;
//
//       case 'video':
//         return AnalyticsEvents.videoUploaded;
//
//       default:
//         return AnalyticsEvents.unknownMedia;
//     }
//   }
// }
//
// // extension MediaFormData on List<MediaDataModel> {
// //   FormData createFormDataFromMedia() {
// //     final formData = FormData();
// //
// //     // Assuming all media have the same roomId
// //     final roomId = firstWhere((m) => m.roomId != null).roomId;
// //     formData.fields.add(MapEntry('roomId', roomId.toString()));
// //
// //     for (int i = 0; i < length; i++) {
// //       final media = this[i];
// //       final fileData = media.fileData;
// //
// //       if (fileData != null) {
// //         formData.files.add(MapEntry(
// //           'files',
// //           MultipartFile.fromBytes(
// //             base64Decode(fileData.bytes),
// //             filename: fileData.name,
// //             contentType: DioMediaType(
// //               fileData.contentType!.split('/')[0],
// //               fileData.contentType!.split('/')[1],
// //             ),
// //           ),
// //         ));
// //       }
// //
// //       formData.fields.addAll([
// //         MapEntry('types[$i]', media.type ?? 'image'),
// //         MapEntry('names[$i]', media.name ?? 'media'),
// //         if (media.progressTags != null && media.progressTags!.isNotEmpty)
// //           MapEntry('progressTags[$i]', media.progressTags!.first.name),
// //       ]);
// //     }
// //
// //     // Optional: use first comment as defectTitle
// //     final defectTitle = firstWhere((m) => m.comment != null, orElse: () => this[0]).comment;
// //     if (defectTitle != null) {
// //       formData.fields.add(MapEntry('defectTitle', defectTitle));
// //     }
// //
// //     return formData;
// //   }
// // }
//
// extension MediaListExtension on List<MediaDataModel> {
//   FormData createFormDataFromMedias() {
//     final formData = FormData();
//
//     if (isEmpty) return formData;
//
//     // Use first media's roomId and comment as shared fields
//     final first = firstWhere((m) => m.roomId != null || m.comment != null, orElse: () => this[0]);
//     if (first.roomId != null) {
//       formData.fields.add(MapEntry('roomId', first.roomId.toString()));
//     }
//     if (first.comment != null) {
//       formData.fields.add(MapEntry('defectTitle', first.comment!));
//     }
//
//     for (int i = 0; i < length; i++) {
//       final media = this[i];
//
//       // File part
//       if (media.fileData != null) {
//         final fileData = media.fileData!;
//         final fileBytes = base64Decode(fileData.bytes);
//         final multipartFile = MultipartFile.fromBytes(
//           fileBytes,
//           filename: fileData.name ?? 'upload_$i.jpg',
//           contentType: DioMediaType(
//             fileData.contentType!.split('/')[0],
//             fileData.contentType!.split('/')[1],
//           ),
//         );
//         formData.files.add(MapEntry('files', multipartFile));
//       }
//
//       // Indexed fields
//       formData.fields.addAll([
//         MapEntry('types[$i]', media.type ?? 'image'),
//         MapEntry('names[$i]', media.name ?? 'media_$i'),
//       ]);
//
//       if (media.progressTags != null && media.progressTags!.isNotEmpty) {
//         final progressTagId = media.progressTags!.first.id.toString();
//         formData.fields.add(MapEntry('progressTags[$i]', progressTagId));
//       }
//     }
//
//     return formData;
//   }
// }
//
// extension MediaFilterExtension on List<MediaDataModel> {
//   List<MediaDataModel> filterByTags(List<Tag> selectedCustomTags, List<ProgressTag> selectedProgressTags) {
//     // If no tags are selected, return an empty list as no filtering criteria exist
//     if (selectedCustomTags.isBlank() && selectedProgressTags.isBlank()) {
//       return this;
//     }
//
//     return where((media) {
//       // Check for matching custom tags
//       final hasMatchingTags = selectedCustomTags
//           .any((selectedTag) => media.tags?.any((mediaTag) => mediaTag.id == selectedTag.id) ?? false);
//
//       // Check for matching progress tags
//       final hasMatchingProgressTags = selectedProgressTags.any((selectedProgressTag) =>
//       media.progressTags?.any((mediaProgressTag) => mediaProgressTag.id == selectedProgressTag.id) ?? false);
//
//       // Include media if it matches any custom or progress tags
//       return hasMatchingTags || hasMatchingProgressTags;
//     }).toList();
//   }
// }
//
// extension CompanyDataExtension on CompanyModel {
//   FormData createFormDataFromCompanyData() {
//     MultipartFile? filePart;
//     if (file != null) {
//       filePart = MultipartFile.fromBytes(
//         base64Decode(file!.bytes),
//         filename: file!.name,
//         contentType: DioMediaType(
//           file!.contentType!.split('/')[0],
//           file!.contentType!.split('/')[1],
//         ),
//       );
//     }
//     // Create the FormData map
//     return FormData.fromMap({
//       'file': filePart,
//       // 'id': id,
//       'name': name,
//       'phone': phone,
//     });
//   }
// }
//
// extension DateTimeExtension on DateTime {
//   String formatDateWithSeparators() {
//     String formattedDate = DateFormat('yyyy-MM-dd').format(this);
//
//     return formattedDate;
//   }
//
//   String formatDateForFilter() {
//     return DateFormat('d MMM yy').format(this);
//   }
// }
//
// extension AppUserExtension on AppUser {
//   getVersionForPlatform() {
//     final version = Platform.isIOS ? iosVersion : androidVersion;
//
//     return Version.parse(version ?? '2.0.3');
//   }
// }
//
// extension LanguageExtension on Language {
//   // getLanguageName() {
//   //   switch (name) {
//   //     case 'Italian':
//   //       return S.current.italian;
//   //     case 'English':
//   //       return S.current.english;
//   //     case 'French':
//   //       return S.current.french;
//   //     case 'German':
//   //       return S.current.german;
//   //   }
//   // }
//
//   getLanguageFlag() {
//     switch (name) {
//       case 'Italian':
//         return AppAssets.italianFlag;
//       case 'English':
//         return AppAssets.britishFlag;
//       case 'French':
//         return AppAssets.frenchFlag;
//       case 'German':
//         return AppAssets.germanFlag;
//       case 'Spanish':
//         return AppAssets.spanishFlag;
//       case 'Serbian':
//         return AppAssets.serbianFlag;
//       case 'Bosnian':
//         return AppAssets.bosnianFlag;
//       case 'Montenegrin':
//         return AppAssets.montenegrinFlag;
//       case 'Albanian':
//         return AppAssets.albanianFlag;
//       default:
//         return AppAssets.germanFlag;
//     }
//   }
// }
//
// extension FirebaseNotificationMapper on FirebaseNotificationDataModel {
//   TeamMessageData toTeamMessageData() {
//     return TeamMessageData(
//       id: team_message_id,
//       team: team_id != null ? TeamData(id: team_id) : null,
//       // Assuming minimal TeamData construction
//       teamMessageId: team_message_id,
//       objectId: object_id,
//       senderEmail: notification_sender,
//       senderId: sender_id,
//       senderFirstName: notification_sender_first_name,
//       senderLastName: notification_sender_last_name,
//       senderImage: notification_sender_image,
//       content: content ?? notification_content_en,
//       created: int.tryParse(created?.toString() ?? '') ?? 0,
//       updated: int.tryParse(created?.toString() ?? '') ?? 0,
//       // If not available in FirebaseNotificationDataModel
//       parentId: parent_id,
//       countReply: 0, // If not available in FirebaseNotificationDataModel
//     );
//   }
// }
//
// extension NotificationDataExtension on NotificationData {
//   String? getContentByLanguageCode(String languageCode) {
//     switch (languageCode) {
//       case "en":
//         return contentEn;
//       case "de":
//         return contentDe;
//       case "fr":
//         return contentFr;
//       case "it":
//         return contentIt;
//       case "es":
//         return contentEs;
//       default:
//         return contentEn;
//     }
//   }
// }
//
// extension NotificationSubTypeExtension on NotificationSubtype {
//   NotificationSubType? getContentByLanguageCode(String languageCode) {
//     switch (id) {
//       case 1:
//         return NotificationSubType.chat;
//       case 2:
//         return NotificationSubType.team;
//       case 3:
//         return NotificationSubType.sub;
//
//       default:
//         return NotificationSubType.chat;
//     }
//   }
//
//   String getTagName() {
//     switch (id) {
//       case 1:
//         return 'Chat';
//       case 2:
//         return 'Team';
//       case 3:
//         return 'Sub';
//
//       default:
//         return 'Chat';
//     }
//   }
//
//   Color getTagNameColor() {
//     switch (id) {
//       case 1:
//         return AppColors.purple300;
//       case 2:
//         return AppColors.green300;
//
//       case 3:
//         return AppColors.orange300;
//
//       default:
//         return AppColors.purple300;
//     }
//   }
//
//   Color getTagBackgroundColor() {
//     switch (id) {
//       case 1:
//         return AppColors.purple50;
//       case 2:
//         return AppColors.green50;
//       case 3:
//         return AppColors.orange50;
//
//       default:
//         return AppColors.purple50;
//     }
//   }
//
//   Color getTagBorderColor() {
//     switch (id) {
//       case 1:
//         return AppColors.purple100;
//       case 2:
//         return AppColors.green100;
//       case 3:
//         return AppColors.orange100;
//
//       default:
//         return AppColors.purple100;
//     }
//   }
// }
