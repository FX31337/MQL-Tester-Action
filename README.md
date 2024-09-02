# MQL Tester 🐳 Action

<!-- markdownlint-configure-file { "MD013": { "line_length": 120 } } -->
[![Tag][gh-tag-image]][gh-tag-link]
[![Status][gha-image-action-master]][gha-link-action-master]
[![Status][gha-image-check-master]][gha-link-check-master]
[![Status][gha-image-docker-master]][gha-link-docker-master]
[![Status][gha-image-lint-master]][gha-link-lint-master]
[![Channel][tg-channel-image]][tg-channel-link]
[![Edit][gh-edit-badge]][gh-edit-link]

This GitHub Action runs MQL programs
(such as Expert Advisors, indicators or scripts).

## Usage

For full documentation, please read:
[GitHub Actions Documentation](https://help.github.com/en/actions).

### Latest release

```yaml
uses: fx31337/mql-tester-action@v2
```

### Specific release

```yaml
uses: fx31337/mql-tester-action@v2.0.0
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
  Login: ${{ secrets.MT5_LOGIN }}
  Password: ${{ secrets.MT5_PASSWORD }}
  Server: MetaQuotes-Demo
  TestExpert: EA31337-Libre-v1.013.ex5
  TestFromDate: 2024.01.01
  TestPeriod: M15
  TestSymbol: EURUSD
  TestToDate: 2024.01.12
  UrlExpert: >-
    https://github.com/EA31337/EA31337-Libre/releases/download/v1.013/EA31337-Libre-v1.013.ex5
  Version: 5
```

## Inputs

### Common

#### `Login`

Account number.

#### `Password`

Password to the account.

### `Server`

Trade server.

### Runner

#### `RunnerTimeout`

Time to wait for platform to finish the test (in seconds). Default: *600*.

### Start Up

#### `Expert`

The name of the EA file to run.

#### `Period`

The default timeframe of the chart.

#### `Script`

The name of the script file to run.

### Tester

#### `Optimization`

#### `TestDeposit`

Initial deposit to use for testing. MT5 only.

#### `TestExpert`

The name of the Expert Advisor file to test.

#### `TestFromDate`

The date to start testing (yyyy.mm.dd).

#### `TestExecutionMode`

Trading execution mode. Default *0* (normal).

#### `TestExpertParameters`

The name of the SET file with EA parameters.

#### `TestLeverage`

Leverage to use for testing/optimization.

#### `TestModel` (int)

Specifies type of modelling to use.
Default *1* (1 minute OHLC).

Values:

- 0 (default) - Every tick
- 1 - Control points
- 2 - Open prices only

#### `TestOptimization`

Specifies testing mode. Default: *0* (backtest).

#### `TestOptimizationCriterion` (int)

Specifies optimization criterion. MT5 only.

#### `TestPeriod`

Timeframe to use for the test.

#### `TestReport`

Specifies the name of the test report file.

#### `TestReplaceReport` (bool)

Specifies whether to enable overwriting of the report file.

#### `TestScriptParameters`

The name of the SET file with script parameters.

#### `TestSpread`

Specifies spread to use in points (e.g. 10). MT4 only.

#### `TestSymbol`

Symbol pair for the test to use. Default: *EURUSD*.

#### `TestToDate`

The date to finish testing (yyyy.mm.dd).

### Other

#### `UrlExpert`

URL of Expert Advisor to download.

#### `UrlPlatform`

URL of the platform to install.

### Platform

#### `Version`

Version of platform to use. Default: *5*.

## Outputs

### `platform_fact`

Platform fact output.

### Support

- For bugs/features,
  raise a [new issue at GitHub](https://github.com/FX31337/MQL-Tester-Action/issues).

<!-- Named links -->

[gh-edit-badge]: https://img.shields.io/badge/GitHub-edit-purple.svg?logo=github
[gh-edit-link]: https://github.dev/FX31337/MQL-Tester-Action

[gh-tag-image]: https://img.shields.io/github/tag/FX31337/MQL-Tester-Action.svg?logo=github
[gh-tag-link]: https://github.com/FX31337/MQL-Tester-Action/tags

[tg-channel-image]: https://img.shields.io/badge/Telegram-join-0088CC.svg?logo=telegram
[tg-channel-link]: https://t.me/EA31337

[gha-link-action-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3AAction+branch%3Amaster
[gha-image-action-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Action/badge.svg

[gha-link-check-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3ACheck+branch%3Amaster
[gha-image-check-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Check/badge.svg

[gha-link-docker-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3ADocker+branch%3Amaster
[gha-image-docker-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Docker/badge.svg

[gha-link-lint-master]: https://github.com/FX31337/MQL-Tester-Action/actions?query=workflow%3ALint+branch%3Amaster
[gha-image-lint-master]: https://github.com/FX31337/MQL-Tester-Action/workflows/Lint/badge.svg
