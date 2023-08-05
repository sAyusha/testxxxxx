import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swapreads/features/exchange_requests/presentation/view/exchange_requests_view.dart';
import 'package:swapreads/features/home/presentation/view/homepage_view.dart';
import 'package:swapreads/features/search/presentation/view/search_view.dart';
import 'package:swapreads/features/user_profile/presentation/view/more_view.dart';

import '../../../../config/router/app_route.dart';
import '../../../exchange_requests/presentation/viewmodel/exchange_request_view_model.dart';
import '../../../user_profile/presentation/viewmodel/profile_view_model.dart';
import '../viewmodel/home_view_model.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeViewModelProvider.notifier).getAllBooks();
      ref.read(profileViewModelProvider.notifier).getUserInfo();
      ref.read(homeViewModelProvider.notifier).getUserBooks();
      ref.read(homeViewModelProvider.notifier).getBookmarkedBooks();
      ref.read(exchangeRequestViewModelProvider.notifier).getExchangeRequests();
    });
  }

  int _selectedIndex = 0;

  List<Widget> screens = [
    const HomepageView(),
    const SearchView(),
    Container(),
    const ExchangeRequestsView(),
    const MoreView(),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: SizedBox.shrink(),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.swap_horiz),
          label: 'Exchange',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.addBookRoute);
        },
        backgroundColor: Colors.blue,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavigationBar(),
      backgroundColor: const Color(0xffF1F4EE),
      body: screens[_selectedIndex],
    );
  }
}
