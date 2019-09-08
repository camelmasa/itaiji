# itaiji

![Build Status](https://github.com/camelmasa/itaiji/workflows/pull_request/badge.svg)

Convert japanese itaiji(異体字) to seijitai(正字体).

## Installation

Add this line to your application's Gemfile:

    gem 'itaiji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itaiji

## Usage

```
converter = Itaiji::Converter.new

converter.seijitai('齊藤') # => '斉藤'
converter.itaiji('斉藤')   # => '齊藤'
```

or

```
using Itaiji::Conversions

'齊藤'.to_seijitai # => '斉藤'
'斉藤'.to_itaiji   # => '齊藤'
```

(only ruby version >= 2.0.0)

## Commands

Test command.

```
rake
```

Fetch source file command.

```
bin/fetch
```

Benchmark command.

```
bin/benchmark
```

## Source

http://wwwap.hi.u-tokyo.ac.jp/ships/itaiji_list.jsp
