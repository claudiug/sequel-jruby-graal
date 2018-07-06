command to start puma: `rackup -p 3000 -E production`

number of items in db: 34
everything is run 10 time using:

` wrk -t12 -c400 -d60s http://localhost:3000`

results

 **jruby**:

 version: jruby 9.2.0.0 (2.5.0) 2018-05-24 81156a8 Java HotSpot(TM) 64-Bit Server VM 10.0.1+10 on 10.0.1+10 +jit [darwin-x86_64]

 export JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -Xcompile.invokedynamic -Xfixnum.cache=false"

Running 1m test @ http://localhost:3000

  12 threads and 400 connections

    Thread Stats   Avg      Stdev     Max   +/- Stdev

    Latency     6.93ms    3.66ms  92.89ms   66.29%

    Req/Sec     1.16k    80.53     1.75k    83.90%

    138502 requests in 1.00m, 866.09MB read

    Socket errors: connect 157, read 173, write 5, timeout 0

- Requests/sec:   `2304.75`

- Transfer/sec:     14.41MB

 **ruby**:

ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17]

Running 1m test @ http://localhost:3000
  12 threads and 400 connections

	Thread Stats   Avg      Stdev     Max   +/- Stdev

    Latency    47.41ms   41.16ms 607.92ms   85.71%

    Req/Sec   338.66     68.21   404.00     83.64%

    20255 requests in 1.00m, 126.66MB read

    Socket errors: connect 157, read 201, write 8, timeout 0

Requests/sec:    `337.03`
Transfer/sec:      2.11MB