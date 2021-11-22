# Cadastro de clientes - Automação Mobile com Ruby e Appium

[![NPM Version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]


Automation of mobile scenarios involving customer registration in the Cadastro de Clientes app.

![](Screenshot_1.png)


## Usage

The application has two forms of registration, basic and complete, in which after registration it is listed on the initial screen of the application.

![](Screenshot_2.png)
![](Screenshot_3.png)


## Development setup

For the development of automation, the mobile Appium testing framework was used, with the Ruby language. 

Dependencies

```sh
make install requires gems and nodejs

```

## Run test

run simple test
```sh
cucumber

```
run test with report generate
```sh
cucumber -f json -o log/report.json -f pretty

```

There is the possibility to view a more complete report, Allure

after running test, apply
```sh
allure serve test_report

```

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki