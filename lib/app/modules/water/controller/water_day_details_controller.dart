import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/models/dto/handle_error.dart';
import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';

class WaterDayDetailsController extends BaseController<WaterRepository> {
  final Rx<DateTime> date = DateTime.now().obs;
  final Rx<String> dailyWaterGoal = ''.obs;
  late RxDouble currentWaterIntake;
  final Rx<bool> isMultipleContainersSelected = false.obs;
  final List<ContainerUsageRequestModel> containers = [
    ContainerUsageRequestModel(
      count: 4,
      containerName: "glass",
      percentageUsed: "20%",
      volume: "1L",
    ),
    ContainerUsageRequestModel(
      count: 4,
      containerName: "tumbler",
      percentageUsed: "20%",
      volume: "1L",
    ),
    ContainerUsageRequestModel(
      count: 4,
      containerName: "stanley",
      percentageUsed: "20%",
      volume: "1L",
    ),
    ContainerUsageRequestModel(
      count: 4,
      containerName: "bottle",
      percentageUsed: "20%",
      volume: "1L",
    ),
    ContainerUsageRequestModel(
      count: 4,
      containerName: "shaker",
      percentageUsed: "20%",
      volume: "1L",
    ),
    ContainerUsageRequestModel(
      count: 4,
      containerName: "custom",
      percentageUsed: "20%",
      volume: "1L",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    currentWaterIntake = 0.5.obs;
    fetchDailyWaterGoal();
  }

  Future<void> onAddWater() async {
    final response = await repository.fetchSelectedContainersList();
    if (response.data != null) {
      if(response.data?.length ==1){
        print("i1a1 controller response ${response.data}");
        // add that much
        //currentWaterIntake.value = currentWaterIntake.value + response.data.;
      }
      else{
        print("i1a1 controller response ${response.data}");
        isMultipleContainersSelected.value = true;
      }

    } else {
      HandleError.handleError(response.error);
    }
  }

  void onLeftOperandClick() {
    date.value = date.value.subtract(const Duration(days: 1));
  }

  void onRightOperandClick() {
    date.value = date.value.add(const Duration(days: 1));
  }

  String getCurrentWaterTaken() {
    return ''; //'${(currentWaterIntake.value * dailyWaterGoal.value).toInt()} ml';
  }

  Future<void> fetchDailyWaterGoal() async {
    print("inside water day details controller");
    final response = await repository.fetchDailyWaterGoal();
    print("response data ${response.data}");
    if (response.isSuccess && response.data != null) {
      print("result is sucuess ${response.data}");
      dailyWaterGoal.value = response.data!;
    } else {
      print("result is failure ${response.error}");
      HandleError.handleError(response.error);
    }
  }
}
