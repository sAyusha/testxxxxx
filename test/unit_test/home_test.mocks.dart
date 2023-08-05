// Mocks generated by Mockito 5.4.2 from annotations
// in swapreads/test/unit_test/home_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:io' as _i10;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:swapreads/core/failure/failure.dart' as _i8;
import 'package:swapreads/features/exchange_requests/domain/entity/exchange_request_entity.dart'
    as _i15;
import 'package:swapreads/features/exchange_requests/domain/repository/exchange_request_repository.dart'
    as _i5;
import 'package:swapreads/features/exchange_requests/domain/use_case/exchange_request_use_case.dart'
    as _i14;
import 'package:swapreads/features/home/domain/entity/book_entity.dart' as _i9;
import 'package:swapreads/features/home/domain/repository/home_repository.dart'
    as _i2;
import 'package:swapreads/features/home/domain/use_case/home_use_case.dart'
    as _i6;
import 'package:swapreads/features/user_profile/domain/entity/password_entity.dart'
    as _i13;
import 'package:swapreads/features/user_profile/domain/entity/profile_entity.dart'
    as _i12;
import 'package:swapreads/features/user_profile/domain/repository/profile_repository.dart'
    as _i4;
import 'package:swapreads/features/user_profile/domain/use_case/profile_use_case.dart'
    as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeIHomeRepository_0 extends _i1.SmartFake
    implements _i2.IHomeRepository {
  _FakeIHomeRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIProfileRepository_2 extends _i1.SmartFake
    implements _i4.IProfileRepository {
  _FakeIProfileRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIExchangeRequestRepository_3 extends _i1.SmartFake
    implements _i5.IExchangeRequestRepository {
  _FakeIExchangeRequestRepository_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeUseCase extends _i1.Mock implements _i6.HomeUseCase {
  @override
  _i2.IHomeRepository get homeRepository => (super.noSuchMethod(
        Invocation.getter(#homeRepository),
        returnValue: _FakeIHomeRepository_0(
          this,
          Invocation.getter(#homeRepository),
        ),
        returnValueForMissingStub: _FakeIHomeRepository_0(
          this,
          Invocation.getter(#homeRepository),
        ),
      ) as _i2.IHomeRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>> getAllBooks() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllBooks,
          [],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getAllBooks,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getAllBooks,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>> getBookById(
          String? bookId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBookById,
          [bookId],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getBookById,
            [bookId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getBookById,
            [bookId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>
      getBookmarkedBooks() => (super.noSuchMethod(
            Invocation.method(
              #getBookmarkedBooks,
              [],
            ),
            returnValue:
                _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                    _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
              this,
              Invocation.method(
                #getBookmarkedBooks,
                [],
              ),
            )),
            returnValueForMissingStub:
                _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                    _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
              this,
              Invocation.method(
                #getBookmarkedBooks,
                [],
              ),
            )),
          ) as _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>> getUserBooks() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserBooks,
          [],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getUserBooks,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i9.BookEntity>>(
          this,
          Invocation.method(
            #getUserBooks,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i9.BookEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> addBook(_i9.BookEntity? book) =>
      (super.noSuchMethod(
        Invocation.method(
          #addBook,
          [book],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #addBook,
            [book],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #addBook,
            [book],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> updateBook(
    _i9.BookEntity? book,
    String? bookId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateBook,
          [
            book,
            bookId,
          ],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #updateBook,
            [
              book,
              bookId,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #updateBook,
            [
              book,
              bookId,
            ],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> deleteBook(String? bookId) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteBook,
          [bookId],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #deleteBook,
            [bookId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #deleteBook,
            [bookId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, String>> uploadBookCover(
          _i10.File? file) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadBookCover,
          [file],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, String>>.value(
            _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #uploadBookCover,
            [file],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, String>>.value(
                _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #uploadBookCover,
            [file],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, String>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> bookmarkBook(String? bookId) =>
      (super.noSuchMethod(
        Invocation.method(
          #bookmarkBook,
          [bookId],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #bookmarkBook,
            [bookId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #bookmarkBook,
            [bookId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> unbookmarkBook(String? bookId) =>
      (super.noSuchMethod(
        Invocation.method(
          #unbookmarkBook,
          [bookId],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #unbookmarkBook,
            [bookId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #unbookmarkBook,
            [bookId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
}

/// A class which mocks [ProfileUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockProfileUseCase extends _i1.Mock implements _i11.ProfileUseCase {
  @override
  _i4.IProfileRepository get profileRepository => (super.noSuchMethod(
        Invocation.getter(#profileRepository),
        returnValue: _FakeIProfileRepository_2(
          this,
          Invocation.getter(#profileRepository),
        ),
        returnValueForMissingStub: _FakeIProfileRepository_2(
          this,
          Invocation.getter(#profileRepository),
        ),
      ) as _i4.IProfileRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i12.ProfileEntity>>> getUserInfo() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserInfo,
          [],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, List<_i12.ProfileEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i12.ProfileEntity>>(
          this,
          Invocation.method(
            #getUserInfo,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, List<_i12.ProfileEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i12.ProfileEntity>>(
          this,
          Invocation.method(
            #getUserInfo,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, List<_i12.ProfileEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> changePassword(
          _i13.PasswordEntity? password) =>
      (super.noSuchMethod(
        Invocation.method(
          #changePassword,
          [password],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #changePassword,
            [password],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #changePassword,
            [password],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> editProfile(
          _i12.ProfileEntity? profile) =>
      (super.noSuchMethod(
        Invocation.method(
          #editProfile,
          [profile],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #editProfile,
            [profile],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #editProfile,
            [profile],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, String>> uploadProfilePicture(
          _i10.File? file) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadProfilePicture,
          [file],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, String>>.value(
            _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #uploadProfilePicture,
            [file],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, String>>.value(
                _FakeEither_1<_i8.Failure, String>(
          this,
          Invocation.method(
            #uploadProfilePicture,
            [file],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, String>>);
}

/// A class which mocks [ExchangeRequestUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockExchangeRequestUseCase extends _i1.Mock
    implements _i14.ExchangeRequestUseCase {
  @override
  _i5.IExchangeRequestRepository get exchangeRequestRepository =>
      (super.noSuchMethod(
        Invocation.getter(#exchangeRequestRepository),
        returnValue: _FakeIExchangeRequestRepository_3(
          this,
          Invocation.getter(#exchangeRequestRepository),
        ),
        returnValueForMissingStub: _FakeIExchangeRequestRepository_3(
          this,
          Invocation.getter(#exchangeRequestRepository),
        ),
      ) as _i5.IExchangeRequestRepository);
  @override
  _i7.Future<_i3.Either<_i8.Failure, List<_i15.ExchangeRequestEntity>>>
      getExchangeRequests() => (super.noSuchMethod(
            Invocation.method(
              #getExchangeRequests,
              [],
            ),
            returnValue: _i7.Future<
                    _i3.Either<_i8.Failure,
                        List<_i15.ExchangeRequestEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i15.ExchangeRequestEntity>>(
              this,
              Invocation.method(
                #getExchangeRequests,
                [],
              ),
            )),
            returnValueForMissingStub: _i7.Future<
                    _i3.Either<_i8.Failure,
                        List<_i15.ExchangeRequestEntity>>>.value(
                _FakeEither_1<_i8.Failure, List<_i15.ExchangeRequestEntity>>(
              this,
              Invocation.method(
                #getExchangeRequests,
                [],
              ),
            )),
          ) as _i7.Future<
              _i3.Either<_i8.Failure, List<_i15.ExchangeRequestEntity>>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> createExchangeRequest(
    _i15.ExchangeRequestEntity? exchangeRequest,
    String? requestedBook,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createExchangeRequest,
          [
            exchangeRequest,
            requestedBook,
          ],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #createExchangeRequest,
            [
              exchangeRequest,
              requestedBook,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #createExchangeRequest,
            [
              exchangeRequest,
              requestedBook,
            ],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> acceptExchangeRequest(
          String? requestId) =>
      (super.noSuchMethod(
        Invocation.method(
          #acceptExchangeRequest,
          [requestId],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #acceptExchangeRequest,
            [requestId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #acceptExchangeRequest,
            [requestId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
  @override
  _i7.Future<_i3.Either<_i8.Failure, bool>> declineExchangeRequest(
          String? requestId) =>
      (super.noSuchMethod(
        Invocation.method(
          #declineExchangeRequest,
          [requestId],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
            _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #declineExchangeRequest,
            [requestId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.Failure, bool>>.value(
                _FakeEither_1<_i8.Failure, bool>(
          this,
          Invocation.method(
            #declineExchangeRequest,
            [requestId],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, bool>>);
}