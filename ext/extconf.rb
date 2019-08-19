$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

# Restricts supported OSes only

require "itaiji/native_ext_fetcher"

root = File.expand_path(__dir__)

Itaiji::NativeExtFetcher.new(
  root: root,
  native_path: File.expand_path("../lib/itaiji/experimental", root)
).fetch_and_decompress
