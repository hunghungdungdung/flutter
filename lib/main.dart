import 'package:auth_nav/auth_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/initialize_dependencies.dart';
import 'package:flutter_application/ui/blocs/blocs.dart';
import 'package:flutter_application/ui/blocs/todo/todo_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://vhmohmxykryothnwfahc.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZobW9obXh5a3J5b3RobndmYWhjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjczMTE1NTMsImV4cCI6MTk4Mjg4NzU1M30.cGu7P3w0Jzsze7VlEK8OAJX5xGn8uvnPIM_80TfpYUM",
  );

  await initializeDependencies();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider.value(value: GetIt.instance.get<AuthNavigationBloc>()),
      BlocProvider.value(value: GetIt.instance.get<AuthBloc>()),
      BlocProvider.value(value: GetIt.instance.get<TodoBloc>()),
    ],
    child: const Application(),
  ));
}
