#import "/config/define.typ": *
#import "/alphabet/alphabet_table.typ": complete_1, complete_2

#bilingual[
    Hag y lytherennow profys hag an lytherennek kowlwrys a neb sort, y koodh wortiwedh profya aray an lytherennow dhe selya an fordh may hyllir restra dogvennow herwydh aga hynsa lytheren.
][
    With its letters introduced and the alphabet complete to some extent, it is necessary finally to introduce an order for the letters to establish a manner in which documents can be organised according to their initial letter.
]

#bilingual(indent: true)[
    Kyn halsen vy (ha kyn hwrug yn privedh) kemynna aray keskorrans nowydh herwydh, rag ensampel, heglewder, po savla a-hys an chanel lev, ow frofyans alemma rag yw gwitha aray keskorrans an lytherennek Latinek, gans varyansow kemynnys a-wartha les ryb lytheren berthynek.
][
    Although I could (as I have done in private) introduce a new collation order according to, for example, sonority, or position along the vocal tract, my recommendation from here on out is to keep the collation order of the Latin alphabet, with variations introduced above placed next to a related letter.
]

#bilingual(indent: true)[
    An aray a le ytho lytherennow erryus wosa hanow lytheren a berth kynsa son hanow an lytheren erryus. Ynwedh, pub bogalen gans "eyl" yn hy hanow yw les wosa hanow lytheren heb an ger na.
][
    So, the order will place divergent letters after a letter name that carries the first sound of a divergent letter. Also, every vowel with "eyl" in its name is placed after the letter name without that word.
]
#pagebreak()

// #set page(margin: 2em)
#complete_1 #pagebreak()
#complete_2

#pagebreak()
#bilingual[
    Oll war-barth:
][
    All together:
]
#let full_order_list = ("A\na", "B\nb", "Ch\nch", "D\nd", "Dh\ndh","E\ne","Eu\neu", "F\nf", "G\ng", "Gw\ngw", "H\nh", "—\ngh", "I\ni", "Y\ny", "J\nj", "K\nk", "C\nc", "L\nl", "M\nm", "N\nn", "—\nng", "O\no", "Oo ~ Oe\noo ~ oe\no", "P\np", "Q\nq", "R\nr", "S\ns", "X\nx", "Sh\nsh", "T\nt", "Th\nth", "U\nu", "Ou\nou", "V\nv", "W\nw", "Hw hw\n~\nWh wh", "Y\ny", "Z\nz")
#let cell_list = ()
#for item in full_order_list {
    cell_list.push(cell[#item])
}

#show: align(center,
grid(
    columns: (0.1fr,0.1fr,0.1fr,0.1fr,0.15fr,0.15fr),
    rows: (0.1fr),
    ..cell_list
))
#pagebreak()

#bilingual[
    Wortiwedh ny dal diblansa lytherennow herwydh hirder. Yn varyansow an yeth a wra devnydh a nosow y tal gorra geryow gans nosow ynna a-berth yn rannas an lytheren selyek perthynek dell viens gans rewlys keskorrans normal.
][
    Finally, words should not be separated by length. In variations of the language which use diacritics, words with diacritics should be placed within the section of the relevant basic letter, as they would be with normal collation rules.
]

#bilingual(indent: true)[
    Mars eus geryow diblensys herwydh hirder hepken, y tal araya ger gans nos hirder wosa ger hebdho. Ytho, yn gerlyver may fia an geryow *dêl* ha *del*, aray an gerlyver a dal diskwedhes *del* kyns *dêl*.
][
    If there are words separated by length alone, one should order the word with a longth diacritic after a word without one. So, in a dictionary in which there might be the words *dêl* and *del*, the dictionary order should display *del* before *dêl*.
]