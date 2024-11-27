// もし、訪問者が “ECMAScript” と入力したら、 “Right!” を出力し、それ以外は – “Didn’t know? ECMAScript!” と出力します。

// let isName = "roseu";

// if (isName === "ECMAScript") {
//   console.log("Right!");
// } else {
//   console.log("Didn`t know?");
// }

// 値がゼロよりも大きい場合,
// ゼロよりも小さい場合
// ゼロと等しい場合

// let isValue = -3;
// if (isValue > 0) {
//   console.log("値がゼロよりも大きい場合");
// } else if (isValue < 0) {
//   console.log("ゼロよりも小さい場合");
// } else {
//   console.log("ゼロと等しい場合");
// }

// 書き直す
// if (a + b < 4) {
//   result = 'Below';
// } else {
//   result = 'Over';
// }
// result = a + b < 4 ? "Below" : "Over";

// 三項演算子に書き直す
// let message;

// if (login == 'Employee') {
//   message = 'Hello';
// } else if (login == 'Director') {
//   message = 'Greetings';
// } else if (login == '') {
//   message = 'No login';
// } else {
//   message = '';
// }
let message =
  login == "Employee"
    ? "Hello"
    : login == "Director"
    ? "Greetings"
    : login == ""
    ? "No login"
    : "";
