import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool _submitting = false;
  String? _error;

  Future<void> _submit() async {
        context.read<AuthBloc>().add(AuthEvent.loginRequested(_userController.text.trim(), _passController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in')),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            loading: () {
              setState(() {
                _submitting = true;
                _error = null;
              });
            },
            authenticated: () {
              setState(() {
                _submitting = false;
              });
            },
            unauthenticated: () {
              _userController.text = '';
              _passController.text = '';
              setState(() {
                _error = null;
                _submitting = false;
              });
            },
            failure: (message) {
              setState(() {
                _error = message;
                _submitting = false;
              });
            },
          );
        },
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 64, 32, 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back!',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w800, color: const Color(0xFF0B1221)),
                  ),
                  const SizedBox(height: 28),
                  Text('Login', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      controller: _userController,
                      decoration: const InputDecoration(border: OutlineInputBorder()),
                      enabled: !_submitting,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Password', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      controller: _passController,
                      decoration: const InputDecoration(border: OutlineInputBorder()),
                      obscureText: true,
                      enabled: !_submitting,
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (_error != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(_error!, style: const TextStyle(color: Colors.red)),
                    ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: FilledButton(
                      onPressed: _submitting ? null : _submit,
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF0A63FF),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      ),
                      child: _submitting
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                            )
                          : const Text('Sign in'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}