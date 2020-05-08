<!-- markdownlint-configure-file { "MD013": { "line_length": 120 } } -->
<!-- [![Release][github-release-image]][github-release-link] -->
<!-- [![Docker image][docker-build-image]][docker-build-link] -->
[![Status][gha-image-action-master]][gha-link-action-master]
[![Status][gha-image-docker-master]][gha-link-docker-master]
[![Status][gha-image-lint-master]][gha-link-lint-master]
[![][tg-channel-image]][tg-channel-link]
[![][tg-chat-image]][tg-chat-link]
[![Edit][gitpod-image]][gitpod-link]

# MQL Tester 🐳 Action

This GitHub Action runs MQL programs (such as Expert Advisors, indicators or scripts).

## Main Inputs

### `Script`

The name of the script to run.

### `TestExpert`

The name of the Expert Advisor to test.

## Backtest Inputs

### `BtDays`

Specifies range of days in each month to test (default: 1-31).

### `BtMonths`

Specifies range of months in each year to test (default: 1).

### `BtYears`

Specifies year or range of years to test (default: 2019).

### `BtYears`

### `TestPeriod`

Timeframe to use for the test (default: _M30_).

## Run Inputs

### `RunOnStart`

Runs command on startup (before the test).

### `RunOnSet`

Runs command on SET configuration (e.g. `file_get URL`).

### `RunOnSuccess`

Runs command after successful test.

### `RunOnFail`

Runs command after test failure.

### `RunOnExit`

Runs command on exit (after the test).

## Advanced Inputs

### `MtVersion`

Version of the MetaTrader platform to install (default: _4.0.0.1260_).

### `OptTrace`

Enables trace mode. It provides extensive debugging messages.

### `OptVerbose`

Enables verbose mode. It provides more detailed messages.

<!--
## Outputs

### `foo`

Foo bar.
-->

## Example usage

```yaml
uses: ea31337/mql-tester-action@master
with:
  TestExpert: 'MACD'
```

### Support

- For bugs/features, raise a [new issue at GitHub](https://github.com/EA31337/MQL-Tester-Action/issues).
- Join our [Telegram group](https://t.me/EA31337) and [channel](https://t.me/EA31337_Announcements) for help.

<!-- Named links -->

[github-release-image]: https://img.shields.io/github/release/EA31337/MQL-Tester-Action.svg?logo=github
[github-release-link]: https://github.com/EA31337/MQL-Tester-Action/releases
[docker-build-image]: https://images.microbadger.com/badges/image/ea31337/mql-tester-action-action.svg
[docker-build-link]: https://microbadger.com/images/ea31337/mql-tester-action-action
<!-- Telegram links -->
[tg-channel-image]: https://img.shields.io/badge/Telegram-news-0088CC.svg?logo=telegram
[tg-channel-link]: https://t.me/EA31337_News
[tg-chat-image]: https://img.shields.io/badge/Telegram-chat-0088CC.svg?logo=telegram
[tg-chat-link]: https://t.me/EA31337
<!-- GitHub Actions build links -->
[gha-link-action-master]: https://github.com/EA31337/MQL-Tester-Action/actions?query=workflow%3AAction@master+branch%3Amaster
[gha-image-action-master]: https://github.com/EA31337/MQL-Tester-Action/workflows/Action@master/badge.svg
[gha-link-docker-master]: https://github.com/EA31337/MQL-Tester-Action/actions?query=workflow%3ADocker+branch%3Amaster
[gha-image-docker-master]: https://github.com/EA31337/MQL-Tester-Action/workflows/Docker/badge.svg
[gha-link-lint-master]: https://github.com/EA31337/MQL-Tester-Action/actions?query=workflow%3ALint+branch%3Amaster
[gha-image-lint-master]: https://github.com/EA31337/MQL-Tester-Action/workflows/Lint/badge.svg
<!-- Gitpod links -->
[gitpod-image]: https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod
[gitpod-link]: https://gitpod.io/#https://github.com/EA31337/MQL-Tester-Action
