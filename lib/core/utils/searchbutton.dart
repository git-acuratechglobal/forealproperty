import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DropdoenWidget extends ConsumerStatefulWidget {
//   final List<String>? items;
//   final void Function(ContactList?)? onChanged;
//   //final String? selectedValue;
//   //final void Function(String?)? onChanged;
//   ////final Widget? customButton;

//   DropdoenWidget({
//     super.key,
//     this.items,
//     // this.selectedValue,
//     this.onChanged,
//     // this.customButton,
//   });

//   @override
//   ConsumerState<DropdoenWidget> createState() => _DropdoenWidgetState();
// }

// class _DropdoenWidgetState extends ConsumerState<DropdoenWidget> {
//   final TextEditingController searchController = TextEditingController();
//   ContactList? selectedContact;
//   //List<ContactList> filteredContacts = [];

//   @override
//   Widget build(BuildContext context) {
//     final contactList = ref.watch(searchableContactListProvider);
//     return AsyncWidget(
//         value: contactList,
//         data: (allContact) {
//           return DropdownButtonFormField2<ContactList>(
//             isExpanded: true,
//             decoration: const InputDecoration(
//               labelText: 'Search Person',
//               border: OutlineInputBorder(),
//             ),
//             value: null,
//             hint: const Text('Select a contact'),
//             dropdownSearchData: DropdownSearchData(
//               searchController: searchController,
//               searchInnerWidgetHeight: 100,
//               searchInnerWidget: TextField(
//                 controller: searchController,
//                 decoration: const InputDecoration(
//                   hintText: 'Search by name...',
//                   border: OutlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   // This triggers actual search logic in the provider
//                   ref
//                       .read(searchableContactListProvider.notifier)
//                       .fetchContacts(searchValue: value);
//                 },
//               ),
//             ),
//             items: allContact.map((contact) {
//               return DropdownMenuItem<ContactList>(
//                 value: contact,
//                 child: Text(contact.firstName ?? 'No Name'),
//               );
//             }).toList(),
//             onChanged: widget.onChanged,
//           );
//         });
//   }
// }

// class DropdownSearchWidget<T> extends StatefulWidget {
//   final List<T> items;
//   final T? selectedValue;
//   final void Function(T?)? onChanged;
//   final String Function(T) itemAsString;
//   final String? hintText;
//   final String Function(T, String) searchFilter;

//   const DropdownSearchWidget({
//     Key? key,
//     required this.items,
//     required this.itemAsString,
//     required this.searchFilter,
//     this.selectedValue,
//     this.onChanged,
//     this.hintText,
//   }) : super(key: key);

//   @override
//   State<DropdownSearchWidget<T>> createState() =>
//       _DropdownSearchWidgetState<T>();
// }

// class _DropdownSearchWidgetState<T> extends State<DropdownSearchWidget<T>> {
//   final TextEditingController searchController = TextEditingController();
//   final FocusNode focusNode = FocusNode();
//   List<T> filteredItems = [];

//   bool enableDropdown = false;

//   void _filterItems(String query) {
//     final trimmedQuery = query.trim().toLowerCase();

//     setState(() {
//       if (trimmedQuery.isNotEmpty) {
//         filteredItems = widget.items
//             .where((item) => widget
//                 .searchFilter(item, trimmedQuery)
//                 .toLowerCase()
//                 .contains(trimmedQuery))
//             .toList();
//         enableDropdown = true;
//       } else {
//         filteredItems = [];
//         enableDropdown = false;
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     searchController.addListener(() {
//       _filterItems(searchController.text);
//     });
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           controller: searchController,
//           focusNode: focusNode,
//           decoration: InputDecoration(
//             labelText: widget.hintText ?? 'Search',
//             border: const OutlineInputBorder(),
//           ),
//         ),
//         const SizedBox(height: 8),
//         if (enableDropdown)
//           Expanded(
//             child: DropdownButtonFormField<T>(
//               isExpanded: true,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//               items: filteredItems.map((item) {
//                 return DropdownMenuItem<T>(
//                   value: item,
//                   child: Text(widget.itemAsString(item)),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 searchController.text = widget.itemAsString(value as T);
//                 widget.onChanged?.call(value);
//                 focusNode.unfocus();
//               },
//               value: widget.selectedValue,
//             ),
//           ),
//       ],
//     );
//   }
// }

class DropdownSearchWidget<T> extends StatefulWidget {
  final List<T> items;
  final T? selectedValue;
  final void Function(T?)? onChanged;
  final String Function(T) itemAsString;
  final String? hintText;
  final String Function(T, String) searchFilter;

  const DropdownSearchWidget({
    Key? key,
    required this.items,
    required this.itemAsString,
    required this.searchFilter,
    this.selectedValue,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  State<DropdownSearchWidget<T>> createState() =>
      _DropdownSearchWidgetState<T>();
}

class _DropdownSearchWidgetState<T> extends State<DropdownSearchWidget<T>> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();

  List<T> filteredItems = [];
  OverlayEntry? _overlayEntry;
  bool enableDropdown = false;

  void _filterItems(String query) {
    final trimmedQuery = query.trim().toLowerCase();
    final results = widget.items
        .where((item) => widget
            .searchFilter(item, trimmedQuery)
            .toLowerCase()
            .contains(trimmedQuery))
        .toList();

    setState(() {
      filteredItems = results;
      enableDropdown = trimmedQuery.isNotEmpty && results.isNotEmpty;
    });

    _removeOverlay();
    if (enableDropdown) {
      _showOverlay();
    }
  }

  void _showOverlay() {
    final overlay = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: MediaQuery.of(context).size.width - 32,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 60),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(4),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 250),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  return ListTile(
                    title: Text(widget.itemAsString(item)),
                    onTap: () {
                      _selectedItem = item;
                      searchController.text = widget.itemAsString(item);
                      widget.onChanged?.call(item);
                      focusNode.unfocus();
                      _removeOverlay();
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
    overlay.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  T? _selectedItem;
  @override
  void initState() {
    super.initState();

    _selectedItem = widget.selectedValue;

    if (_selectedItem != null) {
      searchController.text = widget.itemAsString(_selectedItem!);
    }

    searchController.addListener(() {
      _filterItems(searchController.text);
    });

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        _removeOverlay();
      }
    });
  }

  @override
  void dispose() {
    _removeOverlay();
    searchController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
        link: _layerLink,
        child: TextFormField(
          controller: searchController,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: widget.hintText ?? 'Search',
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0XFFa0a4b0),
                fontSize: 14.sp,
                fontWeight: FontWeight.w800),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE2E2E2)),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE2E2E2)),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE2E2E2)),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            suffixIcon: searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      searchController.clear();
                      setState(() {
                        filteredItems = [];
                        enableDropdown = false;
                      });
                      _removeOverlay();
                    },
                  )
                : null,
          ),
        ));
  }
}
