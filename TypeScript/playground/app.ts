/**
 * どちらの店に食べに行くかを決める
 */
function YakinikuLikeORHidakaya() {
    const random: string[] = ["焼肉ライク", "日高屋"];

    const yakiniku: number[] = [];
    const hidakaya: number[] = [];

    for (let i = 0; i < 100000000; i++) {
        const randomIndex: number = Math.floor(Math.random() * random.length);
        if (randomIndex === 0) {
            yakiniku.push(i);
        } else {
            hidakaya.push(i);
        }
    }

    console.log(`焼肉ライク票: ${yakiniku.length}`);
    console.log(`日高屋票: ${hidakaya.length}`);
    console.log(`確率: ${(yakiniku.length / hidakaya.length) * 100}%`);
}

YakinikuLikeORHidakaya();

// const choices = ["焼肉ライク", "日高屋"] as const;

// const voteOfChoices = {
//   日高屋: 0,
//   焼肉ライク: 0,
// } satisfies { readonly [Key in (typeof choices)[number]]: number };

// for (let i = 0; i < 100000000; i++) {
//   const chosenIndex = Math.floor(Math.random() * choices.length);
//   voteOfChoices[choices[chosenIndex]] += 1;
// }

// console.log(voteOfChoices);

/**
 * マックシェイク、どれ注文するか
 */
function macShake() {
    const macShake = ["バニラ", "イチゴ", "チョコレート"];

    // Math.random() * array.length で3以下の浮動小数生成
    // 少数をMath.floorで切り捨て
    const randomIndex = Math.floor(Math.random() * macShake.length);

    console.log(macShake[randomIndex]);
}

macShake();