import 'package:shiv_fit/app/base/base_controller.dart';


class WaterController extends BaseController {
  // final RxMap<String, ContainerItem> containerData =
  //     <String, ContainerItem>{}.obs;
  // final isEditButtonClicked = false.obs;
  // final isTextFieldVisible = false.obs;
  // RxList listOfContainer = [].obs;
  // final Map<String, ContainerItem> defaultContainerData = {
  //   for (var type in WaterContainerType.values)
  //     type.label: ContainerItem(
  //       image: type.image,
  //       volume: type.defaultVolume,
  //       isUpdated: false,
  //       isSelected: false,
  //     )
  // };


  onInit() {
    super.onInit();
    //loadContainerDataFromStorage();
  }

  // void handleContainerSelection(int index) {
  //   _clearAllSelections();
  //   _markContainerAsSelected(index);
  //  // _saveSelection();
  //   }

  // void _clearAllSelections() {
  //   containerData.updateAll((key, item) => ContainerItem(
  //     image: item.image,
  //     volume: item.volume,
  //     isSelected: false,
  //     isUpdated: item.isUpdated,
  //   ));
  // }

  // void _markContainerAsSelected(int index) {
  //   final key = containerData.keys.elementAt(index);
  //   final selectedItem = containerData[key];
  //
  //   if (selectedItem != null) {
  //     containerData[key] = ContainerItem(
  //       image: selectedItem.image,
  //       volume: selectedItem.volume,
  //       isSelected: true,
  //       isUpdated: selectedItem.isUpdated,
  //     );
  //   }
  // }

  // void _saveSelection() =>
  //   saveContainerDataToStorage();


  // onEditButtonClick() {
  //   isEditButtonClicked.value = true;
  //   isTextFieldVisible.value = true;
  //   }

  // void _updateContainerItem({
  //   required String key,
  //   required ContainerItem Function(ContainerItem item) updatedFields,
  // }) {
  //   final item = containerData[key];
  //   if (item != null) {
  //     containerData[key] = updatedFields(item);
  //     saveContainerDataToStorage();
  //     //print("Updated containerData[$key]: ${containerData[key]}");
  //   } else {
  //     print("No item found for key: $key");
  //   }
  // }


  // void updateIsUpdatedValue(String key) {
  //   _updateContainerItem(
  //     key: key,
  //     updatedFields: (item) => ContainerItem(
  //       image: item.image,
  //       volume: item.volume,
  //       isSelected: item.isSelected,
  //       isUpdated: true,
  //     ),
  //   );
  // }
  // void updateContainerVolume(String key, String newVolume) {
  //   _updateContainerItem(
  //     key: key,
  //     updatedFields: (item) => ContainerItem(
  //       image: item.image,
  //       volume: newVolume,
  //       isSelected: item.isSelected,
  //       isUpdated: item.isUpdated,
  //     ),
  //   );

    //isTextFieldVisible.value = false;
  }


  // String get updatedContainerVolume {
  //   final selectedItem = containerData.values.firstWhere(
  //         (item) => item.isSelected,
  //     orElse: () => ContainerItem(image: '', volume: '', isSelected: false, isUpdated: false),
  //   );
  //   return selectedItem.volume;
  // }

  // void saveContainerDataToStorage() =>
  //   Storage.saveContainerData(containerData);
  //
  //
  // void loadContainerDataFromStorage() {
  //   final loaded = Storage.loadContainerData();
  //
  //   if (loaded.isEmpty) {
  //     containerData.value = defaultContainerData;
  //     Storage.saveContainerData(defaultContainerData); // Store it for next time
  //   } else {
  //     containerData.value = loaded;
  //   }
  // }

  // onContainerSelection(int index) =>
  //   handleContainerSelection(index);
  //
  //
  // String getImage(int index) {
  //   final key = containerData.keys.elementAt(index);
  //   final item = containerData[key];
  //
  //   return item?.image ??  Images.defaultImage;
  // }

  // String getContainerType(int index) =>
  //    containerData.keys.elementAt(index) ?? 'water';
  //
  //
  // String getContainerVolume(int index) {
  //   final key = containerData.keys.elementAt(index);
  //   return containerData[key]?.volume ?? '240';
  // }
  //
  // String getContainerVolumeAfterSelection(){
  //   if(isEditButtonClicked.value) return updatedContainerVolume;
  //   else return getSelectedContainerVolume();
  // }
  // bool isSelected() =>
  //    containerData.values.any((item) => item.isSelected);


  // String getSelectedContainerKey() {
  //   return containerData.entries
  //       .firstWhere((entry) => entry.value.isSelected, orElse: () => MapEntry('', ContainerItem(
  //     image: '',
  //     volume: '',
  //     isSelected: false,
  //     isUpdated: false,
  //   )))
  //       .key;
  // }

  // String getSelectedImage() {
  //   // if (isSelected()) {
  //   //   //final selectedItem = containerData.values.firstWhere((item) => item.isSelected);
  //   //   //return selectedItem.image;
  //   // }
  //   return ''; // fallback if none selected
  // }

  // String getSelectedContainerType() {
  //   for (final entry in containerData.entries) {
  //     if (entry.value.isSelected) {
  //       return entry.key;
  //     }
  //   }
  //   return '';
  // }
  // String getSelectedContainerVolume() {
  //   for (final entry in containerData.entries) {
  //     if (entry.value.isSelected) {
  //       return entry.value.volume;
  //     }
  //   }
  //   return ''; // fallback if none selected
  // }

  // bool
  // isSelectedContainerUpdated() {
  //   final selectedKey = getSelectedContainerKey();
  //   if (selectedKey.isNotEmpty && containerData.containsKey(selectedKey)) {
  //     return containerData[selectedKey]!.isUpdated;
  //   }
  //   return false;
  // }


  // bool isUpdated(int index){
  //   final key = containerData.keys.elementAt(index);
  //   return containerData[key]?.isUpdated == true;
  // }

  // void onDoneClick(){
  //   final selectedEntry = containerData.entries.firstWhere(
  //         (entry) => entry.value.isSelected,
  //   );
  //
  //   selectedEntry.value.isSelected = false;
  //   saveContainerDataToStorage();
  //   }
  // void onChangeContainerClick(){
  //   final selectedEntry = containerData.entries.firstWhere(
  //         (entry) => entry.value.isSelected,
  //   );
  //
  //   selectedEntry.value.isSelected = false;
  //   saveContainerDataToStorage();
  // }
  //}