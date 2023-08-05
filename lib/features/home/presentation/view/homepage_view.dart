import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shake/shake.dart';
import 'package:swapreads/features/exchange_requests/presentation/view/create_exchange_request.dart';
import 'package:swapreads/features/exchange_requests/presentation/viewmodel/exchange_request_view_model.dart';

import '../../../../core/common/provider/internet_connectivity.dart';
import '../../domain/entity/book_entity.dart';
import '../viewmodel/home_view_model.dart';
import '../widget/buildBookCard.dart';
import '../widget/buildRoundedButton.dart';
import 'book_details_view.dart';

class HomepageView extends ConsumerStatefulWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends ConsumerState<HomepageView> {
  late ShakeDetector detector;

  @override
  void initState() {
    super.initState();
    detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        ref.read(homeViewModelProvider.notifier).getAllBooks();
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 6,
    );
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  void dispose() {
    super.dispose();
    detector.stopListening();
  }

  @override
  Widget build(BuildContext context) {
    var bookState = ref.watch(homeViewModelProvider);
    List<BookEntity> homeList = bookState.books;

    var internetState = ref.watch(connectivityStatusProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('SwapReads'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(homeViewModelProvider.notifier).getAllBooks();
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildRoundedButton(
                          Icons.history, 'Recently Added', Colors.white),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeList.length,
                    itemBuilder: (context, index) {
                      final book = homeList[index];
                      final homeViewModel =
                          ref.read(homeViewModelProvider.notifier);

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDetailsView(book: book),
                            ),
                          );
                        },
                        child: buildBookCard(
                          bookId: book.bookId!,
                          title: book.title,
                          author: book.author,
                          description: book.description,
                          genre: book.genre,
                          language: book.language,
                          bookCover: book.bookCover!,
                          date: book.date!,
                          formattedCreatedAt: book.formattedCreatedAt!,
                          isBookmarked: book.isBookmarked!,
                          homeViewModel: homeViewModel,
                          context: context,
                          user: book.user!,
                          internetState: internetState,
                          onPressed: () async {
                            await ref
                                .watch(homeViewModelProvider.notifier)
                                .getBookById(book.bookId!);

                            await ref
                                .watch(
                                    exchangeRequestViewModelProvider.notifier)
                                .getExchangeRequests();

                            final exchangeRequests = ref
                                .read(exchangeRequestViewModelProvider)
                                .exchangeRequests;
                            print(exchangeRequests);

                            final requestedBook =
                                ref.read(homeViewModelProvider).bookById;

                            if (!context.mounted) return;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateExchangeRequestView(
                                    bookId: book.bookId!,
                                    requestedBook: requestedBook),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
