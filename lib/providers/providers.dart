import 'package:flutter_pixel_project/bloc/auth/auth_bloc.dart';
import 'package:flutter_pixel_project/bloc/auth/auth_event.dart';
import 'package:flutter_pixel_project/data/repositories/auth_repositories.dart';
import 'package:flutter_pixel_project/data/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pixel_project/network/server_api.dart';
import 'package:flutter_pixel_project/ui/main/cubit/main_cubit.dart';
import 'package:flutter_pixel_project/ui/order_details/cubit/order_details_cubit.dart';
import '../network/auth_server_api.dart';
import '../ui/authorization_page/authorization/cubit/authorization_cubit.dart';

getRepositories(RestClient client, AuthRestClient authClient) {
  return [
    RepositoryProvider<UserRepository>(create: (context) => UserRepository(client)),
    RepositoryProvider<AuthRepository>(create: (context) => AuthRepository(authClient)),
  ];
}

getProviders(RestClient client, AuthRestClient authClient) {
  return [
    BlocProvider(create: (context) => MainCubit(UserRepository(client))),
    BlocProvider(create: (context) => AuthorizationCubit(AuthRepository(authClient))),
    BlocProvider(create: (context) => AuthenticationBloc(UserRepository(client))..add(AppStarted())),
    BlocProvider(create: (context) => OrderDetailsCubit(UserRepository(client))),
  ];
}