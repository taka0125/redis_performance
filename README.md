# Benchmark

```
docker-compose build
docker-compose run redis-rb-benchmark
```

```
Creating redis_performance_redis-rb-benchmark_run ... done
Warming up --------------------------------------
   zrevrange(16_384)     19.167 i/s -      20.000 times in 1.043480s (52.17ms/i)
   zrevrange( 1_024)     33.066 i/s -      36.000 times in 1.088746s (30.24ms/i)
Calculating -------------------------------------
   zrevrange(16_384)     19.756 i/s -      57.000 times in 2.885145s (50.62ms/i)
   zrevrange( 1_024)     34.286 i/s -      99.000 times in 2.887510s (29.17ms/i)

Comparison:
   zrevrange( 1_024):        34.3 i/s
   zrevrange(16_384):        19.8 i/s - 1.74x  slower
```
