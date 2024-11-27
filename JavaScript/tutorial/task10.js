// 1 よりも大きい整数で、1 と自身以外では、余りなく割ることができない場合、その数値は 素数(prime) と呼ばれます。
// つまり、1より大きいnが 1 と n 以外では割り切れない場合、素数となります。
// 例えば、5 は素数です。なぜなら、2, 3 と 4 ではあまり無く割ることができなからです。
// 2 から n の範囲で、素数を出力するコードを書きなさい。

// n = 10 の場合、結果は 2,3,5,7 です。
function printPrimes(n) {
  for (let i = 2; i <= n; i++) {
    if (isPrime(i)) {
      console.log(i);
    }
  }
}

function isPrime(num) {
  for (let i = 2, sqrt = Math.sqrt(num); i <= sqrt; i++)
    if (num % i === 0) return false;
  return num > 1;
}

printPrimes(50);

function printPrimes(maxValue) {
  let primes = Array(maxValue + 1).fill(true);
  primes[0] = primes[1] = false;

  for (let i = 2; i <= Math.sqrt(maxValue); i++) {
    if (primes[i]) {
      for (let j = i * i; j <= maxValue; j += i) {
        primes[j] = false;
      }
    }
  }

  for (let i = 2; i <= maxValue; i++) {
    if (primes[i]) console.log(i);
  }
}

printPrimes(10); // 2, 3, 5, 7 を出力します
