#import "define.typ": *

#let template(doc_title: "", doc_sub: "", doc_author: "", auth_email: "", content) = {

    // Set document title and author
    set document(
        title: doc_title,
        author: doc_author,
    )

    // Set paper size, number alignment, and number
    set page(
        paper: "a5",
        number-align: center,
        numbering: none,
    )

    // Set text font, size, language, and hyphenation
    set text(
        font: "Noto Sans",
        size: 11pt,
        lang: "en",
        hyphenate: false
    )

    // Set heading numbering style
    set heading(
        numbering: "1.a.I.i"
    )

    // Show rule for heading titles
    show heading: head_title => {
        if head_title.level == 1 {
            text(
                weight: "extrabold",
            )[#underline(head_title)]
            v(0.75em)
        } else if head_title.level == 2 {
            text(
                weight: "bold",
            )[#head_title]
            v(0.5em)
        } else if head_title.level == 3 {
            text(
                weight: "medium",
                style: "italic",
            )[#underline(stroke: 0.5pt)[#head_title.body].]
        } else {
            text(
                weight: "light",
                style: "italic"
            )[#underline(stroke: 0.3pt)[#head_title.body].]
        }
    }

    // Gap above the title
    v(1.25fr)

    // Title element
    align(left)[
        #text(size: 24pt, spacing: 150%)[
            #case_title(doc_title)
        ]\
        #v(0.1fr)
        #text(size: 18pt, spacing: 150%, weight: "light")[
            #smallcaps(doc_sub)
        ]
        #v(0.1fr)
        #text(size: 14pt)[
            #strong(doc_author)
        ]
        #v(0.05fr)
        #text(size:14pt)[
            #emph(auth_email)
        ]
    ]

    // Spacing underneath the title element
    v(1fr)

    // Image and thanks to Typst for typsetting tools
    align(center)[
        #block[
            #image(width: 40pt, "/typstlogo.png")
            #text(size: 10pt, weight: "light")[Typeset with Typst]
        ]
    ]

    // Page break that demarcates the title page 
    pagebreak()

    // Introduce new paragraph rule
    set par(
        first-line-indent: 0pt,
        justify: true
    )

    include "/license/license.typ"
    pagebreak()

    // Show table of contents
    outline(
        title:[
            Dalgh
            #text(weight: "light")[
                #emph[(Contents)]
            ]
        ],
        indent: true
    )
    pagebreak()

    set page(numbering: "1.")
    counter(page).update(1)

    content
}