// before
const birthday = "18.04.1982";
const age = someCode(birthday);

// after
// ハードコード（実行前に値がわかっていて、コードに直接書き込まれている値）は、大文字で定義する
const BIRTHDAY = "18.04.1982";
const age = someCode(birthday);
