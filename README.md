# itaiji

[![Build Status](https://travis-ci.org/camelmasa/itaiji.png)](https://travis-ci.org/camelmasa/itaiji)
[![Code Climate](https://codeclimate.com/github/camelmasa/itaiji.png)](https://codeclimate.com/github/camelmasa/itaiji)
[![Test Coverage](https://codeclimate.com/github/camelmasa/itaiji/badges/coverage.svg)](https://codeclimate.com/github/camelmasa/itaiji)
[![Dependency Status](https://gemnasium.com/camelmasa/itaiji.svg)](https://gemnasium.com/camelmasa/itaiji)

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


## Experimental

⚠️ Only Linux and Mac

You can use experimental feature.
This feature overrides `Itaiji::Converter` class.
The class uses [itaiji-rust](https://github.com/camelmasa/itaiji-rust)'s `dylib` through `Ruby FFI`.
The feature is 8X faster than pure Ruby implementation.

Just add below.
```
require 'itaiji/experimental'
```

### Benchmark

```
Pure ruby implementation
       user     system      total        real
  18.558206   0.191018  18.749224 ( 18.756106)

Experimental feature (Rust implementation)
       user     system      total        real
   2.396576   0.002712   2.399288 (  2.401042)
```


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
