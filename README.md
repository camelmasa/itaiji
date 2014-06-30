# itaiji

<a href="https://travis-ci.org/camelmasa/itaiji"><img src="https://camo.githubusercontent.com/a3e361cf2fc093115e162917e806518afe919705/68747470733a2f2f7472617669732d63692e6f72672f63616d656c6d6173612f636f6e6e6563742e706e67" alt="Build Status" data-canonical-src="https://travis-ci.org/camelmasa/itaiji.png" style="max-width:100%;"></a>


Convert japanese itaiji(異体字) to seijitai(正字体) or reverse also.

Instration
----------

Add this line to your application's Gemfile:

    gem 'itaiji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itaiji

Usage
-----

```
converter = Itaiji::Converter.new
converter.convert_seijitai('髙橋') # => '高橋'

converter.convert_itaiji('高橋') # => '髙橋'
```

Source
------
http://wwwap.hi.u-tokyo.ac.jp/ships/itaiji_list.jsp
