import 'package:cook_book/app/store/controller/category_repository.dart';
import 'package:cook_book/app/store/models/categry.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final _categoryRepo = Get.put(CategoryRepository());

  final isLoading = false.obs;
  RxList<Category> categoryList = <Category>[].obs;
  RxList<Category> featureCategoryList = <Category>[].obs;

  @override
  void onInit() {
    getCategoryList();
    super.onInit();
  }

  Future<void> getCategoryList() async {
    try {
      isLoading.value = true;

      final categories = await _categoryRepo.getAllCategory();

      categoryList.assignAll(categories);

      featureCategoryList.assignAll(categoryList.where((category) => category.isFeatured && category.parentId.isEmpty).take(5).toList());
    } catch (e) {
      throw "Something wrong $e";
    } finally {
      isLoading.value = false;
    }
  }
}
