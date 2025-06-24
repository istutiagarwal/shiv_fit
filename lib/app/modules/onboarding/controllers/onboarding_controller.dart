import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/enums/enums/water_goal_enum.dart';
import 'package:shiv_fit/app/data/enums/water/water_container_enum.dart';
import 'package:shiv_fit/app/data/models/dto/handle_error.dart';
import 'package:shiv_fit/app/data/models/dto/handle_success.dart';
import 'package:shiv_fit/app/data/models/dto/tile_action.dart';
import 'package:shiv_fit/app/data/repository/onboarding_repository.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';

class OnboardingController extends BaseController<OnboardingRepository> {
  final RxSet<int> selectedIndexes = <int>{}.obs;

  List<TileAction> get tileActions =>
      WaterGoalEnum.values.map((e) => TileAction(label: e.label)).toList();

  List<TileAction> get waterLogActions => WaterContainerType.values
      .map((e) =>
          TileAction(label: e.label, description: e.description, icon: e.icon))
      .toList();

  Future<void> handleWaterGoalClick(String selectedWaterGoal) async {
    final response = await repository.saveWaterGoal(selectedWaterGoal);
    if (response.isSuccess) {
      HandleSuccess.showSuccess(AppConstant.water.weightGoalSuccess);
    } else {
      HandleError.handleError(response.error);
    }
  }

  void toggleSelection(int index) {
    if (selectedIndexes.contains(index)) {
      selectedIndexes.remove(index);
    } else {
      selectedIndexes.add(index);
    }
  }

  bool isTileSelected(int index) {
    return selectedIndexes.contains(index);
  }
}
