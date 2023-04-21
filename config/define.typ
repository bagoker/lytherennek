#let case_title(body) = {
    smallcaps(strong(underline(stroke: 1pt, offset: 3pt)[
        #body
    ]))
}

#let bilingual(indent: false, cornish, english) = {
    text(lang: "cor")[
    #if indent {
        h(2em)
    }
        #cornish
    ]
    linebreak()
    text(lang: "en", weight: "light", style: "italic")[
    #if indent {
        h(2em)
    }
        #english
    ]
}
#let in_bilingual(cornish, english) = {
    text(lang: "cor")[
        #h(2em)
        #cornish
    ]
    linebreak()
    text(lang: "en", weight: "light", style: "italic")[
        #h(2em)
        #english
    ]
}

#let make_heading(cornish, english) = {
    align(horizon)[       
        #heading[
            #bilingual[
                #cornish
            ][
                #h(1em)
                #english
            ]
        ]
    ]
}

#let make_head(level, cornish, english) = {
    if level == 1 {
        align(horizon)[       
            #heading[
                #bilingual[
                    #cornish
                ][
                    #h(1em)
                    #english
                ]
            ]
        ]
        pagebreak()
    } else if level == 2 {
        heading(level: 2)[
            #bilingual[
                #cornish
            ][
                #h(1.75em)
                #english
            ]
        ]
    }
}

#let cell = rect.with(
    inset: 4pt,
    outset: 1pt,
    stroke: ("rest": 0.5pt)
)