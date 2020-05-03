<!-- markdownlint-configure-file { "MD013": { "line_length": 120 } } -->
<!-- [![Release][github-release-image]][github-release-link] -->
<!-- [![Docker image][docker-build-image]][docker-build-link] -->
[![Status][gha-image-action-master]][gha-link-action-master]
[![Status][gha-image-docker-master]][gha-link-docker-master]
[![Status][gha-image-lint-master]][gha-link-lint-master]
[![][tg-channel-image]][tg-channel-link]
[![][tg-chat-image]][tg-chat-link]
[![Edit][gitpod-image]][gitpod-link]

[github-release-image]: https://img.shields.io/github/release/EA31337/MQL-Action.svg?logo=github
[github-release-link]: https://github.com/EA31337/MQL-Action/releases
[docker-build-image]: https://images.microbadger.com/badges/image/ea31337/mql-action-action.svg
[docker-build-link]: https://microbadger.com/images/ea31337/mql-action-action
<!-- Telegram links -->
[tg-channel-image]: https://img.shields.io/badge/Telegram-news-0088CC.svg?logo=telegram
[tg-channel-link]: https://t.me/EA31337_News
[tg-chat-image]: https://img.shields.io/badge/Telegram-chat-0088CC.svg?logo=telegram
[tg-chat-link]: https://t.me/EA31337
<!-- GitHub Actions build links -->
[gha-link-action-master]: https://github.com/EA31337/MQL-Action/actions?query=workflow%3AAction@master+branch%3Amaster
[gha-image-action-master]: https://github.com/EA31337/MQL-Action/workflows/Action@master/badge.svg
[gha-link-docker-master]: https://github.com/EA31337/MQL-Action/actions?query=workflow%3ADocker+branch%3Amaster
[gha-image-docker-master]: https://github.com/EA31337/MQL-Action/workflows/Docker/badge.svg
[gha-link-lint-master]: https://github.com/EA31337/MQL-Action/actions?query=workflow%3ALint+branch%3Amaster
[gha-image-lint-master]: https://github.com/EA31337/MQL-Action/workflows/Lint/badge.svg
<!-- Gitpod links -->
[gitpod-image]: https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod
[gitpod-link]: https://gitpod.io/#https://github.com/EA31337/MQL-Action

# MQL 🐳 Action

This GitHub Action runs MQL programs (such as Expert Advisors, indicators or scripts).

## Main Inputs

### `Script`

The name of the script to run.

### `TestExpert`

The name of the Expert Advisor to test.

## Other Inputs

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
uses: ea31337/mql-action@master
with:
  TestExpert: 'MACD'
```

### Support

- For bugs/features, raise a [new issue at GitHub](https://github.com/EA31337/MQL-Action/issues).
- Join our [Telegram group](https://t.me/EA31337) and [channel](https://t.me/EA31337_Announcements) for help.
