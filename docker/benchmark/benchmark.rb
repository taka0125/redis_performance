require 'bundler/setup'
Bundler.require

Benchmark.driver do |x|
  x.prelude %{
    require 'bundler/setup'
    Bundler.require

    url = 'redis://redis5/0'
    redis = Redis.new(url: url)
    redis.flushall
    4000.times { |i| redis.zadd('ranking', rand(1...10000), i + 1) }
  }

  x.report 'zrevrange(16_384)', %{ redis = Redis.new(url: url, read_bytes_from_socket: 16_384).zrevrange('ranking', 0, 3000, {with_scores: true}) }
  x.report 'zrevrange( 1_024)', %{ redis = Redis.new(url: url, read_bytes_from_socket:  1_024).zrevrange('ranking', 0, 3000, {with_scores: true}) }
end
