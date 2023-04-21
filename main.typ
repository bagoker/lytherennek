#import "/config/config.typ"
#import "/config/define.typ": *

#show: config.template.with(
    doc_title: "An Lytherennek Meur",
    doc_sub: "The Complete Cornish Alphabet",
    doc_author: "Gourmas (J. C. Andrever-Wright)",
    auth_email: "menystrer@bagoker.org"
)

#make_head(1)[A-dro][About]

#make_head(2)[An awtour][The author]
#include "/about/about.typ"
#pagebreak()

#make_head(2)[An ragdres][The project]
#include "about/aboutproject.typ"
#pagebreak()

#make_head(1)[Termys][Terms]
#include "/terms/terms.typ"
#pagebreak()

#make_head(1)[Kessonennow][Consonants]
#include "/categories/consonants.typ"
#pagebreak()

#make_head(1)[Bogalennow][Vowels]
#include "/categories/vowels.typ"
#pagebreak()

#make_head(1)[Nosow][Diacritics]
#include "/diacritics/diacritics.typ"
#pagebreak()

#make_head(1)[Aray keskorrans][Collation order]
#include "/collation/collation.typ"
#pagebreak()

#make_head(1)[Devnydh hag ensamplow][Usage and examples]
#include "/usage/usage.typ"

// #alphabet_table.voiced #pagebreak()
// #alphabet_table.unvoiced #pagebreak()
// #alphabet_table.deviating #pagebreak()
// #alphabet_table.vowels #pagebreak()