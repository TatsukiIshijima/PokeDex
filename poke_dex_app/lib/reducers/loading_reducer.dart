import 'package:poke_dex_app/actions/poke_list_actions.dart';
import 'package:poke_dex_app/states/loading_state.dart';

LoadingState loadingReducer(LoadingState oldState, dynamic action) {
  // TODO:ローディングが必要な action の追加
  // action に応じて LoadingState の状態を変更
  if (action is FetchPokeListAction) {
    return const LoadingState(isLoading: true);
  } else {
    return const LoadingState(isLoading: false);
  }
}
