import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/view/adapt_view.dart';
import 'package:petology/view/home/home_view.dart';
import 'package:petology/view/request_view.dart';
import 'package:petology/view_model/cubit/cubit/states.dart';

class PetologyCubit extends Cubit<PetologyStates> {
  PetologyCubit() : super(PetologyInitialState());

  static PetologyCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
     HomeScreen(),
     RequestScreen(),
     AdaptScreen(),
  ];

  void changeAppbarScreen(int index) {
    currentIndex = index;
    emit(AppBarState());
  }


//   HomeModel? homeModel;
//
//   Map<int, bool> favorites = {};
//
//   void getHomeData() {
//     DioHelper.getData(
//       url: HOME,
//       token: token,
//     ).then((value) {
//       homeModel = HomeModel.fromJson(value.data);
//
//       homeModel!.data!.products!.forEach((element) {
//         favorites.addAll({
//           element.id!: element.inFavorites!,
//         });
//       });
//
//       emit(ShopSuccessHomeDataState());
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorHomeDataState(error));
//     });
//   }
//
//   CategoriesModel? categoriesModel;
//
//   void getCategoriesData() {
//     DioHelper.getData(
//       url: GET_CATEGORIES,
//     ).then((value) {
//       categoriesModel = CategoriesModel.fromJson(value.data);
//       emit(ShopSuccessCategoriesDataState());
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorCategoriesDataState(error));
//     });
//   }
//
//   FavoritesModel? favoritesModel;
//
//   void getFavorites() {
//     emit(ShopLoadingGetFavoritesState());
//
//     DioHelper.getData(
//       url: FAVORITES,
//       token: token,
//     ).then((value) {
//       favoritesModel = FavoritesModel.fromJson(value.data);
//
//       emit(ShopSuccessGetFavoritesState());
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorGetFavoritesState());
//     });
//   }
//
//   ChangeFavoritesModel? changeFavoritesModel;
//
//   void changeFavorites(int productId) {
//     favorites[productId] = !favorites[productId]!;
//
//     emit(ShopChangeFavoritesState());
//
//     DioHelper.postData(
//       url: FAVORITES,
//       data: {
//         'product_id': productId,
//       },
//       token: token,
//     ).then((value) {
//       changeFavoritesModel = ChangeFavoritesModel.fromJson(value.data);
//       print(value.data);
//
//       if (!changeFavoritesModel!.status!) {
//         favorites[productId] = !favorites[productId]!;
//       } else {
//         getFavorites();
//       }
//
//       emit(ShopSuccessChangeFavoritesState(changeFavoritesModel!));
//     }).catchError((error) {
//       favorites[productId] = !favorites[productId]!;
//
//       emit(ShopErrorChangeFavoritesState());
//     });
//   }
//
//   ShopLoginModel? userModel;
//
//   void getUserData() {
//     DioHelper.getData(
//       url: PROFILE,
//       token: token,
//     ).then((value) {
//       userModel = ShopLoginModel.fromJson(value.data);
//
//       emit(ShopSuccessGetFavoritesState());
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorGetFavoritesState());
//     });
//   }
//
//   void updateUserData({
//     required String name,
//     required String email,
//     required String phone,
//   }) {
//     emit(ShopLoadingUpdateUserState());
//
//     DioHelper.putData(
//       url: UPDATE_PROFILE,
//       token: token,
//       data: {
//         'name': name,
//         'email': email,
//         'phone': phone,
//       },
//     ).then((value) {
//       print(value.data);
//       userModel = ShopLoginModel.fromJson(value.data);
//       emit(ShopSuccessUpdateUserState(userModel!));
//     }).catchError((error) {
//       print(error.toString());
//       emit(ShopErrorUpdateUserState());
//     });
//   }
}
