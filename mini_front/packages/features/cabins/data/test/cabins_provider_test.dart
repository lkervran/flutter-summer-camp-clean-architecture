import 'package:cabins_domain/cabins_domain.dart';
import 'package:givn/givn.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shouldly/shouldly.dart';

import 'cabins_provider_test.mocks.dart';

@GenerateMocks([CabinsRepository])
void main() {
  given(
    'a repository that returns three cabins',
    (context) {
      when(context.mockOf<CabinsRepository>().fetchCabins()).thenAnswer(
        (_) async => const [
          Cabin(description: 'Hilltop', id: 'eagle', name: "Eagle's Nest"),
          Cabin(description: 'Lakeside', id: 'otter', name: 'Otter Lodge'),
          Cabin(description: 'In the pines', id: 'fox', name: 'Fox Den'),
        ],
      );
      return cabinsProvider;
    },
    mocks: [MockCabinsRepository()],
    providers: (context) => [
      cabinsRepositoryProvider.overrideWith((ref) => context.mockOf<CabinsRepository>()),
    ],
  ).when('the cabins are loaded', (sut, context) => context.ref.read(sut.future)).then(
    'the state holds those three cabins',
    (result, context) {
      result.length.should.be(3);
      result.first.name.should.be("Eagle's Nest");
    },
  );

  given(
    'a repository that fails to fetch',
    (context) {
      when(context.mockOf<CabinsRepository>().fetchCabins()).thenThrow(Exception('no network'));
      return cabinsProvider;
    },
    mocks: [MockCabinsRepository()],
    providers: (context) => [
      cabinsRepositoryProvider.overrideWith((ref) => context.mockOf<CabinsRepository>()),
    ],
  ).when('the cabins are loaded', (sut, context) => context.ref.read(sut.future)).thenShouldThrow(
    'the load surfaces the error',
    (error, stackTrace, context) {
      error.toString().should.contain('no network');
    },
  );
}
