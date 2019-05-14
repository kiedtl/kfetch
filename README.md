<h1 align="center">kfetch</h1>
<p align="center">A clean looking, super fast fetch script for Linux forked from ufetch.</p>
<br>
<h3 align="center">Goals</h3>
<p>kfetch tries to be fast. <br>kfetch tries to be aesthetically pleasing at the same time. <br>The kfetch code should be readable, allowing for easy hacking.</p>
<br>
<h3 align="center">Problems with other scripts</h3>
<p>pfetch looks too ugly.<br>ufetch is split into a hundred files, one for each distro.<br>aurafetch looks nice, but is too slow.<br>Screenfetch is a big hairy mess.<br>and Neofetch is too slow, too bloated, and too complex.</p>
<br>
<h3 align="center">Installation</h3>
<pre>$ sudo curl "https://raw.githubusercontent.com/kiedtl/kfetch/master/kfetch" -o /usr/bin/kfetch
$ sudo chmod +x /usr/bin/kfetch
</pre>
<br>
<h3 align="center">Benchmarks</h3>
<pre>+kiedtl ~ (master +?) % hyperfine 'pfetch' 'kfetch' 'ufetch' 'rsfetch' 'aura' 'neofetch' 'screenfetch'
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

</pre>
