# MQL Tester 🐳 Action

<!-- markdownlint-configure-file { "MD013": { "line_length": 120 } } -->
[![Release][github-release-image]][github-release-link]
<!-- [![Docker image][docker-build-image]][docker-build-link] -->
[![Status][gha-image-action-master]][gha-link-action-master]
[![Status][gha-image-docker-master]][gha-link-docker-master]
[![Status][gha-image-lint-master]][gha-link-lint-master]
[![Telegram Channel][tg-channel-image]][tg-channel-link]
[![Telegram Chat][tg-chat-image]][tg-chat-link]
[![Edit][gitpod-image]][gitpod-link]

This GitHub Action runs MQL programs (such as Expert Advisors, indicators or scripts).

## Usage

For full documentation, please read: [GitHub Actions Documentation](https://help.github.com/en/actions).

### Latest release

```yaml
uses: fx31337/mql-tester-action@v1
```

### Specific release

```yaml
uses: fx31337/mql-tester-action@v1.0.0
```

Note: Check _Releases_ for more details.

### Latest development version

```yaml
uses: fx31337/mql-tester-action@master
```

### Overriding default inputs

```yaml
uses: fx31337/mql-tester-action@master
with:
    TestExpert: Dummy
    BtPair: EURUSD
    BtMonths: 1-2
    BtYears: 2020
```

## Inputs

### Main Inputs

#### `Script`

The name of the script to run.

#### `TestExpert`

The name of the Expert Advisor to test.

### Backtest Inputs

#### `BtPair` (string)

Symbol pair to use. Default: *EURUSD*.

#### `BtCurrency` (string)

Base currency to use. Default: *USD*.

#### `BtDeposit` (int)

Deposit amount to use. Default: *10000*.

#### `BtDigits` (int)

Specifies number of digits after decimal point for the current symbol prices (default: 5).

#### `BtSpread` (int)

Specifies spread to use in points (e.g. 10).

#### `BtDays` (int/string)

Specifies range of days in each month to test (default: 1-31).

#### `BtMonths` (int/string)

Specifies range of months in each year to test (default: 1).

#### `BtYears` (int/string)

Specifies year or range of years to test (default: 2019).

#### `SetFile` (string)

Specifies SET file to use for the test.

#### `TestPeriod` (string)

Timeframe to use for the test (default: *M30*).

### Test Results

#### `BtDest` (string)

Specifies directory to copy the results.

Default: */github/workspace*.

#### `TestReportName` (string)

Specifies the name of the test report file.

Default: *tester/Report*.

### Optimization Inputs

#### `OptOptimize` (bool)

Runs test in optimization mode.

#### `BtTestModel` (int)

Specifies type of backtest data being tested.

Values:

- 0 (default) - Every tick
- 1 - Control points
- 2 - Open prices only

#### `TestLimitOpts` (string)

Specifies EA limit test parameters in a sequence of comma-separated values (e.g. *genetic=0,maxdrawdown_enable=1,maxdrawdown=20.00*).

#### `SetParams` (string)

Specifies parameters to optimize in SET file (`SetFile`) in a sequence of comma-separated values.

### Run Inputs

#### `RunOnStart` (string)

Runs command on startup (before the test).

Default: *clean_sources* (to remove source code files from the platform directory).

#### `RunOnSet` (string)

Runs command on SET configuration (e.g. `file_get URL`).

#### `RunOnSuccess` (string)

Runs command after successful test.

#### `RunOnError` (string)

Runs command on test error (including warnings).

#### `RunOnExit` (string)

Runs command on exit (after the test).

#### `RunOnFail` (string)

Runs command after test failure.

#### `RunOnWarning` (string)

Runs command on test warnings (excluding errors).

### Result Inputs

#### `OptFormatBrief` (bool)

Converts test report file to brief text format. Default: *false*.

#### `OptFormatJson` (bool)

Converts test report file to JSON formatted file. Default: *false*.

### Advanced Inputs

#### `MtDest` (string)

Destination path to install MetaTrader platform. Default is the working directory (e.g. `/github/workspace`).

#### `MtVersion` (string)

Version of the MetaTrader platform to install. Default: *4.0.0.1260*.

#### `OptTrace` (bool)

Enables trace mode. It provides extensive debugging messages. Default: *false*.

#### `OptVerbose` (bool)

Enables verbose mode. It provides more detailed messages. Default: *false*.

<!--
## Outputs

### `foo`

Foo bar.
-->

### Support

- For bugs/features, raise a [new issue at GitHub](https://github.com/FX31337/MQL-Tester-Action/issues).
- Join our [Telegram group][tg-chat-link] and [channel][tg-channel-link] for help.

<!-- Named links -->

[github-release-image]: https://img.shields.io/github/release/FX31337/MQL-Tester-Action.svg?logo=github
[github-release-link]: https://github.com/FX31337/MQL-Tester-Action/releases
[docker-build-image]: https://images.microbadger.com/badges/image/ea31337/mql-tester-action-action.svg
[docker-build-link]: https://microbadger.com/images/ea31337/mql-tester-action-action

[tg-channel-image]: https://img.shields.io/badge/Telegram-news-0088CC.svg?logo=telegram
[tg-channel-link]: https://t.me/EA31337_News
[tg-chat-image]: https://img.shields.io/badge/Telegram-chat-0088CC.svg?logo=telegram
[tg-chat-link]: https://t.me/EA31337

[gha-link-action-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3AAction+branch%3Amaster
[gha-image-action-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Action/badge.svg
[gha-link-docker-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3ADocker+branch%3Amaster
[gha-image-docker-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Docker/badge.svg
[gha-link-lint-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3ALint+branch%3Amaster
[gha-image-lint-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Lint/badge.svg

[gitpod-image]: https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod
[gitpod-link]: https://gitpod.io/#https://github.com/FX31337/MQL-Tester-Action
