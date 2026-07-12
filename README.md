# Guidepup VoiceOver

Portable VoiceOver preference bundles for use with [Guidepup](https://github.com/guidepup/guidepup).

This repository builds and publishes versioned VoiceOver preference bundles as DMG assets for each supported macOS release. These portable preferences allow Guidepup to run with a known, reproducible VoiceOver configuration without modifying a user's existing VoiceOver settings.

## Purpose

VoiceOver stores user preferences on disk and these preferences can vary significantly between machines. Differences in configuration can affect automation behaviour and test results.

This repository provides:

- Versioned portable VoiceOver preference bundles.
- One bundle per supported macOS major release.
- GitHub Releases containing ready-to-use DMG assets.
- Automated validation and publishing through GitHub Actions.

## Releases

Each GitHub Release publishes DMG assets for every supported macOS version, for example:

- `guidepup-voiceover-preferences-macos-14.dmg`
- `guidepup-voiceover-preferences-macos-15.dmg`
- `guidepup-voiceover-preferences-macos-26.dmg`

These assets are consumed by `@guidepup/setup` and `@guidepup/guidepup` to provide a consistent VoiceOver environment during automation.

## License

The original content in this repository, including scripts, workflows, documentation, and Guidepup-specific VoiceOver preference configurations, is licensed under the [MIT License](./LICENSE).

This repository does not distribute Apple's VoiceOver software.
