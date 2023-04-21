#let voiced_table = {
    // let progress = counter("tablestep")
    table(
        columns: (1fr, 2fr),
        align: (col, row) => if col == 0 { right } else { center },
        [#strong("Lytheren") (Letter)], [#strong("Hanow") (Name)],
        [b], [be],
        [d], [dhe],
        [dh], [dhe],
        [g], [ge],
        [j], [je],
        [l], [le],
        [m], [me],
        [n], [ne],
        [r], [re],
        [v], [ve],
    )
}
#let unvoiced_table = {
    // let progress = counter("tablestep")
    table(
        columns: (1fr, 2fr),
        align: (col, row) => if col == 0 { right } else { center },
        [#strong("Lytheren") (Letter)], [#strong("Hanow") (Name)],
        [f], [fa],
        [h], [ha],
    )
}
#let deviants = {
    // let progress = counter("tablestep")
    table(
        columns: (1fr, 2fr),
        align: (col, row) => if col == 0 { right } else { center },
        [#strong("Lytheren") (Letter)], [#strong("Hanow") (Name)],
        [c], [ki],
    )
}
#let vowels = {
    // let progress = counter("tablestep")
    table(
        columns: (1fr, 2fr),
        align: (col, row) => if col == 0 { right } else { center },
        [#strong("Lytheren") (Letter)], [#strong("Hanow") (Name)],
        [b], [be],
        [b], [be],
        [b], [be],
        [b], [be],
    )
}

#voiced_table
#unvoiced_table