// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/addcontactfield.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/contact_detail_screen.dart';
import 'package:foreal_property/features/home_features/providers/get_contact_list.dart';

class Allcontacts extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  final String filterType;
  const Allcontacts({super.key, required this.filterType, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AllcontactsState();
}

class _AllcontactsState extends ConsumerState<Allcontacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBF3F5),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: OwnerList(
            filterType: widget.filterType,
            onOpenHomesTap: widget.onOpenHomesTap,
          ),
        ));
  }
}

class OwnerList extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  final String filterType;

  const OwnerList({super.key, required this.filterType, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OwnerListState();
}

class _OwnerListState extends ConsumerState<OwnerList> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";
  @override
  Widget build(BuildContext context) {
    final contactList = ref.watch(getContactListProvider);
    return AsyncWidget(
        onRetry: () {
          ref.read(getContactListProvider.notifier).resetContacts();
        },
        value: contactList,
        data: (allContact) {
          //  final filteredContacts = allContact?.where((contact) => contact.typeIam == "1").toList() ?? [];

          List<ContactList> filteredContacts;

          if (widget.filterType == 'all') {
            filteredContacts = allContact ?? [];
          } else {
            filteredContacts = allContact
                    ?.where((contact) => contact.typeIam == widget.filterType)
                    .toList() ??
                [];
          }

          return CustomScrollView(slivers: [
            SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 100,
              backgroundColor: const Color(0xFFEBF3F5),
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              title: TextFormField(
                controller: searchController,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (value) {
                  if (value.trim().isEmpty) {
                    ref
                        .read(getContactListProvider.notifier)
                        .resetContacts(); // <-- Call full list fetch
                  } else {
                    ref
                        .read(getContactListProvider.notifier)
                        .searchProperty(searchValue: value);
                  }
                  // searchController.clear();
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFFB9B9B9),
                      ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/search-normal.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xFFB9B9B9),
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.clear,
                      size: 20,
                      color: Color(0xFFB9B9B9),
                    ),
                    onPressed: () {
                      searchController.clear();
                      ref
                          .read(getContactListProvider.notifier)
                          .resetContacts(); // reset on clear
                    },
                  ),
                ),
                cursorColor: const Color(0xFFB9B9B9),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredContacts.length,
                itemBuilder: (BuildContext context, int index) {
                  BorderRadius borderRadius = BorderRadius.zero;
                  if (index == 0) {
                    borderRadius = BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    );
                  } else if (index == filteredContacts.length - 1) {
                    borderRadius = BorderRadius.only(
                      bottomLeft: Radius.circular(16.r),
                      bottomRight: Radius.circular(16.r),
                    );
                  }
                  return InkWell(
                    onTap: () {
                      context.push(ContactDetailScreen(
                          onOpenHomesTap: widget.onOpenHomesTap,
                          filteredContacts[index].contactUniqueId.toString()));
                      print(filteredContacts[index].contactUniqueId);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 22.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: borderRadius,
                        //  borderRadius: widget.borderRadius,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundImage: AssetImage(
                              filteredContacts[index].userProfiles ??
                                  'assets/images/profile1.png',
                            ),
                          ),
                          16.horizontalSpace,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  filteredContacts[index].firstName ?? "",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF1A1B28),
                                  ),
                                ),
                                4.verticalSpace,
                                filteredContacts[index].email?.isNotEmpty ==
                                        true
                                    ? Text(
                                        filteredContacts[index].email!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: const Color(0xFF494D60),
                                            ),
                                      )
                                    : const SizedBox.shrink(),
                                4.verticalSpace,
                                Text(
                                  filteredContacts[index].phone ?? "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: const Color(0xFF494D60),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          PopupMenuButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  width: 1,
                                  color: Color(0xFFE2E2E2),
                                )),
                            itemBuilder: (context) => <PopupMenuEntry<String>>[
                              PopupMenuItem<String>(
                                  // value: 'Edit',
                                  child: SizedBox(
                                width: 126,
                                child: Text(
                                  'Notes',
                                  style: TextStyle(
                                    color: const Color(0xFF164C63),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                              PopupMenuItem<String>(
                                  // value: 'Edit',
                                  child: Text(
                                'Send Emails',
                                style: TextStyle(
                                  color: const Color(0xFF164C63),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                              PopupMenuItem<String>(
                                  // value: 'Edit',
                                  onTap: () {
                                    if (allContact != null &&
                                        allContact.isNotEmpty) {
                                      context.push(
                                        AddContactField(
                                            contact: allContact[
                                                index]), // 👈 Pass first contact
                                      );
                                    }
                                  },
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      color: const Color(0xFF164C63),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                            child: Image.asset(
                              'assets/images/more-circle.png',
                              height: 24.h,
                              width: 24.w,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: Color(0xFFE2E2E2),
                    thickness: 1,
                    height: 1,
                  );
                },
              ),
            ),
            SliverToBoxAdapter(child: 10.verticalSpace),
          ]);
        });
  }
}

class Contactbox extends ConsumerStatefulWidget {
  const Contactbox({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactboxState();
}

class _ContactboxState extends ConsumerState<Contactbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 115,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x28000000),
            blurRadius: 24,
            offset: Offset(0, 12),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
