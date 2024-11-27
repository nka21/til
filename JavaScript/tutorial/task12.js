function ifMin(a, b) {
  if (a < b) {
    return a;
  }
  return b;
}

function isMin(a, b) {
  return a < b ? a : b;
}

// console.log(isMin(3, -1));

function pow(x, n) {
  const result = x;

  for (let i = 1; i < n; i++) {
    result *= x;
  }

  return result;
}
