import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/inspection_feature/model/property_address_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common_widgets.dart';
import '../../../../core/utils/appsnackbar.dart';
import '../../provider/inspection_list_provider.dart';
import '../../provider/inspection_provider.dart';

class PlanInspectionTimeDuration extends HookConsumerWidget {
  PlanInspectionTimeDuration({super.key, required this.planInspectionList});
  final List<PlanInspectionModel> planInspectionList;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-33.8688, 151.2093),
    zoom: 10.4746,
  );
  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.listenManual(inspectionNotifierProvider, (_, next) {
        switch (next) {
          case AsyncData<String?> data when data.value != null:
            ref.invalidate(inspectionListNotifierProvider);
            context.navPop();
            context.navPop();
            Utils.showSnackBar(context, data.value!);
            break;
          case AsyncError error:
            Utils.showSnackBar(context, error.error.toString());
            break;
        }
      });
      return null;
    }, []);
    final _formKey = GlobalKey<FormState>();
    final selectedProperty = useState(planInspectionList);
    final selectedDuration = useState<String?>(null);
    final selectedTimeSlot = useState<String?>(null);
    final updateParam = ref.read(planInspectionParamProvider.notifier);
    return PageLoadingWidget(
      isLoading: ref.watch(inspectionNotifierProvider).isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plan Inspection'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: selectedProperty.value.isEmpty?const Center(
          child: Text("Please Add Property "),
        ) :Form(
          key: _formKey,
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  TimeSlotDropdown(
                    showCurrentTimeSlot: true,
                    value: selectedTimeSlot.value,
                    onChanged: (String? value) {
                      selectedTimeSlot.value = value;
                      updateParam.updatePropertyIds(
                          selectedProperty.value.map((e) => e.id).toList());
                      updateParam.updateTimeSlot(value!);
                    },
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return 'Field is required';
                      }
                      return null;
                    },
                  ),
                  15.verticalSpace,
                  WidgetDropdown(
                    propertyOptions: const ['15', '30', '45', '60'],
                    selectedValue: selectedDuration.value,
                    onChanged: (String? value) {
                      selectedDuration.value = value;
                      updateParam.updatePropertyIds(
                          selectedProperty.value.map((e) => e.id).toList());
                      updateParam
                          .updateDuration(int.parse(selectedDuration.value!));
                    },
                    hintText: 'Duration',
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return 'Field is required';
                      }
                      return null;
                    },
                  ),
                  15.verticalSpace,
                  SizedBox(
                    height: 500,
                    child: GoogleMap(
                      myLocationButtonEnabled: false,
                      scrollGesturesEnabled: true,
                      initialCameraPosition: _kGooglePlex,
                      mapType: MapType.normal,
                      onMapCreated: _onMapCreated,
                      markers: selectedProperty.value
                          .where((p) => p.lat != null && p.lng != null)
                          .map(
                            (p) => Marker(
                              markerId: MarkerId(p.id.toString()),
                              position: LatLng(p.lat!, p.lng!),
                              infoWindow: InfoWindow(title: p.address),
                            ),
                          )
                          .toSet(),
                      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                        Factory<PanGestureRecognizer>(
                            () => PanGestureRecognizer()),
                        Factory<VerticalDragGestureRecognizer>(
                            () => VerticalDragGestureRecognizer()),
                        Factory<HorizontalDragGestureRecognizer>(
                            () => HorizontalDragGestureRecognizer()),
                        Factory<ScaleGestureRecognizer>(
                            () => ScaleGestureRecognizer()),
                      },
                    ),
                  ),
                  15.verticalSpace,
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final data = selectedProperty.value[index];
                      return ListTile(
                        leading: Text(
                          "${index + 1}",
                          style: const TextStyle(fontSize: 16),
                        ),
                        tileColor: Colors.white,
                        title: Text(data.address),
                        trailing: IconButton(onPressed: (){
                          final newList = List.of(selectedProperty.value)..removeAt(index);
                          selectedProperty.value = newList;
                        }, icon:const Icon(Icons.delete,color: Colors.red,)),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return 10.verticalSpace;
                    },
                    itemCount: selectedProperty.value.length,
                  ),
                  20.verticalSpace,
                  PrimaryButton(
                      title: 'Schedule',
                      onClick: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          ref
                              .read(inspectionNotifierProvider.notifier)
                              .planInspection();
                        }

                      }),
                  60.verticalSpace,
                ],
              )),
        ),
      ),
    );
  }
}
