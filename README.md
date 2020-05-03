<!-- markdownlint-configure-file { "MD013": { "line_length": 120 } } -->
<!-- [![Release][github-release-image]][github-release-link] -->
<!-- [![Docker image][docker-build-image]][docker-build-link] -->
[![](https://img.shields.io/badge/Telegram-news-0088CC.svg?logo=telegram)](https://t.me/EA31337_News)
[![](https://img.shields.io/badge/Telegram-chat-0088CC.svg?logo=telegram)](https://t.me/EA31337)
[![Edit][gitpod-image]][gitpod-link]

[github-release-image]: https://img.shields.io/github/release/EA31337/EA-Tester-Action.svg?logo=github
[github-release-link]: https://github.com/EA31337/EA-Tester-Action/releases
[docker-build-image]: https://images.microbadger.com/badges/image/ea31337/ea-tester-action.svg
[docker-build-link]: https://microbadger.com/images/ea31337/ea-tester-action
[gitpod-image]: https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod
[gitpod-link]: https://gitpod.io/#https://github.com/EA31337/EA-Tester-Action

# EA Tester 🐳 Action

This GitHub Action runs MQL programs (such as Expert Advisors, indicators or scripts).

## Inputs

### `TestExpert`

The name of the Expert Advisor to test.

<!--
## Outputs

### `foo`

Foo bar.
-->

## Example usage

```yaml
uses: ea31337/ea-tester-action@master
with:
  TestExpert: 'MACD'
```
