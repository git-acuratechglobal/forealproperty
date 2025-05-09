// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Allcontacts extends ConsumerStatefulWidget {
  const Allcontacts({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AllcontactsState();
}

class _AllcontactsState extends ConsumerState<Allcontacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24,), child: OwnerList()));
  }
}

class Ownermessage extends StatefulWidget {
  final String image;
  final String name;
  final String email;
  final String phone;
  final BorderRadius borderRadius;

  const Ownermessage({
    Key? key,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.borderRadius,
  }) : super(key: key);

  @override
  State<Ownermessage> createState() => _OwnermessageState();
}

class _OwnermessageState extends State<Ownermessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: widget.borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(widget.image),
          ),
          16.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1A1B28),
                  ),
                ),
                4.verticalSpace,
                Text(
                  widget.email,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF494D60),
                      ),
                ),
                4.verticalSpace,
                Text(
                  widget.phone,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xFF494D60),
                      ),
                ),
              ],
            ),
          ),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 1,
                  color: const Color(0xFFE2E2E2),
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
                  child: Text(
                'Delete',
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
    );
  }
}

class OwnerList extends ConsumerStatefulWidget {
  const OwnerList({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OwnerListState();
}

class _OwnerListState extends ConsumerState<OwnerList> {
  final List<Map<String, dynamic>> owner = [
    {
      'name': 'Jane Doe',
      'email': 'jane.doe@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Cody Fisher',
      'email': 'cody.f@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196-2.png'
    },
    {
      'name': 'Wade Warren',
      'email': 'wade.warren@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196-3.png'
    },
    {
      'name': 'Esther Howard',
      'email': 'esther.h@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    },
    {
      'name': 'Arlene McCoy',
      'email': 'arlene.m@example.com',
      'phone': '0123 456 7890',
      'image': 'assets/images/Rectangle196.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        titleSpacing: 0,
        toolbarHeight: 100,
        backgroundColor: Color(0xFFEBF3F5),
        floating: true,
        snap: true,
        automaticallyImplyLeading: false,
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Color(0xFFB9B9B9),
                ),
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: Image.asset(
                'assets/images/search-normal.png',
                height: 20,
                width: 20,
                color: Color(0xFFB9B9B9),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            filled: true,
            fillColor: Colors.white,
          ),
          cursorColor: Color(0xFFB9B9B9),
        ),
      ),
      SliverList.separated(
        itemCount: owner.length,
        itemBuilder: (BuildContext context, int index) {
          final contact = owner[index];
          BorderRadius borderRadius = BorderRadius.zero;
          if (index == 0) {
            borderRadius = BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            );
          } else if (index == owner.length - 1) {
            borderRadius = BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            );
          }
          return Ownermessage(
            image: contact['image'],
            name: contact['name'],
            email: contact['email'],
            phone: contact['phone'],
            borderRadius: borderRadius,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Color(0xFFE2E2E2),
            thickness: 1,
            height: 1,
          );
        },
      )
    ]);
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
          side: BorderSide(
            width: 1,
            color: const Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
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
