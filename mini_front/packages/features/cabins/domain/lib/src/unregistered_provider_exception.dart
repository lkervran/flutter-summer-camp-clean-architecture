/// Thrown by a provider that a feature *declares it needs* but does not implement
/// itself. A data or composition layer must fulfil it via `bindProviders()`.
///
/// If you ever see this at runtime, the wiring is incomplete — head to the
/// composition layer and check the overrides list. (That's Day 29's whole quest.)
class UnregisteredProviderException implements Exception {
  const UnregisteredProviderException(this.providerName);

  final String providerName;

  @override
  String toString() =>
      'UnregisteredProviderException: `$providerName` was used before it was '
      'overridden. A data/composition layer must provide it via bindProviders().';
}
