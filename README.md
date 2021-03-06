![](https://lptstr.github.io/lptstr-images/proj/kfetch/current-edited.jpg)

> A clean looking, super fast fetch script for Linux.

### Problems with other scripts

+ golfetch looks too ugly.
+ ufetch is split into a hundred files, one for each distro.
+ aurafetch looks nice, but is too slow.
+ Screenfetch is a big hairy mess and just way to slow.
+ Neofetch is too slow, too bloated, and too complex.
+ [rsfetch](https://github.com/rsfetch/rsfetch) is wonderful, but it's written in Rust and is thus not easily modified. I would highly recommend it over this project if you don't care about hackability.

+ besides, everybody has to write their own fetch script at some point :P

### Installation
With curl:
```
$ sudo curl "https://raw.githubusercontent.com/kiedtl/kfetch/master/kfetch" -o /usr/bin/kfetch
$ sudo chmod +x /usr/bin/kfetch
```
With Git/`make`:
```
$ git clone git@github.com:kiedtl/kfetch.git
$ cd kfetch && sudo make install
$ cd .. && rm -rf ./kfetch
```

### Benchmarks
kfetch vs aura, pfetch, rsfetch, ufetch, neofetch and screenfetch
```
+kiedtl ~ (master +?) % hyperfine 'pfetch' 'kfetch' 'ufetch' 'rsfetch' 'aura' 'neofetch' 'screenfetch'
Benchmark #1: pfetch
  Time (mean ± σ):       4.7 ms ±   0.5 ms    [User: 3.3 ms, System: 1.9 ms]
  Range (min … max):     4.2 ms …   8.9 ms    426 runs

Benchmark #2: kfetch
  Time (mean ± σ):      14.7 ms ±   1.3 ms    [User: 10.3 ms, System: 5.2 ms]
  Range (min … max):    13.4 ms …  26.6 ms    170 runs

Benchmark #3: ufetch
  Time (mean ± σ):      22.9 ms ±   1.1 ms    [User: 19.9 ms, System: 6.3 ms]
  Range (min … max):    21.3 ms …  27.7 ms    100 runs

Benchmark #4: rsfetch
  Time (mean ± σ):       1.0 ms ±   0.3 ms    [User: 1.0 ms, System: 0.9 ms]
  Range (min … max):     0.8 ms …   2.8 ms    822 runs

Benchmark #5: aura
  Time (mean ± σ):      70.0 ms ±  43.8 ms    [User: 47.9 ms, System: 19.6 ms]
  Range (min … max):    54.7 ms … 215.5 ms    13 runs

Benchmark #6: neofetch
  Time (mean ± σ):     154.5 ms ±   4.2 ms    [User: 113.2 ms, System: 55.2 ms]
  Range (min … max):   149.3 ms … 168.7 ms    17 runs

Benchmark #7: screenfetch
  Time (mean ± σ):     318.3 ms ±  81.8 ms    [User: 211.9 ms, System: 119.5 ms]
  Range (min … max):   287.8 ms … 550.9 ms    10 runs

Summary
  'rsfetch' ran
    4.47 ± 1.33 times faster than 'pfetch'
   14.08 ± 4.06 times faster than 'kfetch'
   21.87 ± 6.11 times faster than 'ufetch'
   66.86 ± 45.68 times faster than 'aura'
  147.56 ± 40.79 times faster than 'neofetch'
  304.07 ± 114.47 times faster than 'screenfetch'

```
