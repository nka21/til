// for ループを使って 2 から 10 までの偶数を出力してください。
function printEvenNumbers() {
  for (let i = 2; i <= 10; i++) {
    if (i % 2 === 0) {
      console.log(i);
    }
  }
}

// printEvenNumbers();

function fortowhile() {
  let i = 0;
  while (i < 3) {
    console.log(`number ${i}!`);
    i++;
  }
}

fortowhile();
