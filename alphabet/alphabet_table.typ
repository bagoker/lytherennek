#let base_table(text_size: 9pt, params) = {
    set text(size: text_size)
    // let progress = counter("tablestep")
    table(
        columns: (1fr, 2fr),
        rows: params.len(),
        align: (col, row) => if col == 0 { right } else { center },
        [#strong("Lytheren") (Letter)], [#strong("Hanow") (Name)],
        ..params.pairs().flatten()
    )
}

#let voiced_consonants = (
    "b": "be",
    "d": "de",
    "dh": "dhe",
    "g": "ge",
    "j": "je",
    "l": "le",
    "m": "me",
    "n": "ne",
    "r": "re",
    "v": "ve",
    "w": "we",
    "y": "ye",
    "z": "ze",
)
#let unvoiced_consonants = (
    "ch": "cha",
    "f": "fa",
    "h": "ha",
    "k": "ka",
    "p": "pa",
    "q": "kwa",
    "s": "sa",
    "sh": "sha",
    "t": "ta",
    "th": "tha",
    "hw ~ wh": "hwa / wa",
)
#let deviating_consonants = (
    "c": "ki",
    "gh": "hi",
    "gw": "gi",
    "ng": "ni",
    "x": "si",
)
#let vowel_sounds = (
    "a": "a",
    "e": "e",
    "eu": "eyl e",
    "i": "i",
    "o": "o",
    "oo, oe, o": "eyl o",
    "u": "ou",
    "ou": "eyl ou",
    "*y": "*eyl i",
)
#let cor_diacritic_dict = (
    "¯ Āā": "nor barr",
    "` Àà": "nos poos",
    "ˆ Ââ": "nos to",
    "¨ Ëë": "nos dewlagas",
)
#let diacritic_dict = (
    "˘ Ăă": "nos bolla",
    "˚ Åå": "nos bysow",
    "ˇ Ǎǎ": "nos genn",
    "ˀ Ảả": "nos higen",
    "˛ Ąą": "nos lost",
    "´ Áá": "nos lymm",
    "˙ Ȧȧ": "nos poynt",
    ". Ạạ": "nos poynt a-is",
    "˜ Ãã": "nos tonn",
    "¸ Çç": "nos sedila",
    "ˍ H̱ẖ": "nos barr a-is",
    "- Ħħ": "nos linen a-dreus",
    "˝ Őő": "nos dewlymm",
    "ʼ Ơơ": "nos korn",
    ", Șș": "nos treghen",
)
#let complete_order_1 = (
    "a": "a",
    "b": "be",
    "ch": "cha",
    "d": "de",
    "dh": "dhe",
    "e": "e",
    "eu": "eyl e",
    "f": "fa",
    "g": "ge",
    "gw": "gi",
    "h": "ha",
    "gh": "hi",
    "i": "i",
    "*y": "*eyl i",
    "j": "je",
    "k": "ka",
    "c": "ki",
    "l": "le",
    "m": "me",
    "n": "ne",
    "ng": "ni",
    "o": "o",
    "oo, oe, o": "eyl o",
)
#let complete_order_2 = (
    "p": "pa",
    "q": "kwa",
    "r": "re",
    "s": "sa",
    "x": "si",
    "sh": "sha",
    "t": "ta",
    "th": "tha",
    "u": "ou",
    "ou": "eyl ou",
    "v": "ve",
    "w": "we",
    "hw ~ wh": "hwa, wa",
    "y": "ye",
    "z": "ze",
)

#let voiced = base_table(voiced_consonants)
#let unvoiced = base_table(unvoiced_consonants)
#let deviating = base_table(deviating_consonants)
#let vowels = base_table(vowel_sounds)
#let cor_diacritics = base_table(cor_diacritic_dict)
#let diacritics = base_table(diacritic_dict)
#let complete_1 = base_table(complete_order_1)
#let complete_2 = base_table(complete_order_2)