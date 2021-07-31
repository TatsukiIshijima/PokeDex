import 'package:poke_dex_app/poke_list_actions.dart';
import 'package:poke_dex_app/states/error_state.dart';

ErrorState errorReducer(ErrorState oldState, dynamic action) {
  return ErrorState(
    apiErrorState: _apiErrorReducer(
      oldState.apiErrorState,
      action,
    ),
  );
}

ApiErrorState? _apiErrorReducer(ApiErrorState? oldState, dynamic action) {
  // TODO:APIエラー表示が必要な action の追加
  // action に応じて ApiErrorState の状態を変更
  if (action is ShowPokeApiErrorAction) {
    return ApiErrorState(
      apiError: action.apiError,
    );
  } else {
    return null;
  }
}
