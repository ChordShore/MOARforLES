loop,1 { ;this is where the scale menu is created
FileRead, cheatread, %A_ScriptDir%\resources\activecheat.txt ;these cheats are hidden jokes; don't mind them.
if (cheatread = "jazz"){
Menu, Scales, Add, THE LICK™, thelick
Menu, Chords, Add, THE LICK™, thelick

Menu, Pianomenu, Add, Scales, :Scales
Menu, Pianomenu, Add, Chords, :Chords
goto, skipnormalscales
}
if (cheatread = "blackmidi"){
Menu, AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA, Add, 死, deathmidi
Menu, Pianomenu, Add, AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA, :AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
goto, skipnormalscales
}

; the actual scale menu is built here
Menu, Scales, Add, Major/Ionian, majorscale
Menu, Scales, Add, Natural Minor/Aeolean, minorscale
Menu, Scales, Add,
Menu, Scales, Add, Harmonic Minor, minorscaleh
Menu, Scales, Add, Melodic Minor, minorscalem 
Menu, Scales, Add, Dorian, dorian
Menu, Scales, Add, Phrygian, phrygian
Menu, Scales, Add, Lydian, lydian
Menu, Scales, Add, Mixolydian, mixolydian
Menu, Scales, Add, Locrian, locrian
Menu, Scales, Add,
Menu, Pentatonic Based, Add, Major Pentatonic, majorpentatonic
Menu, Pentatonic Based, Add, Minor Pentatonic, minorpentatonic
Menu, Pentatonic Based, Add, Major Blues, BluesMaj
Menu, Pentatonic Based, Add, Minor Blues, Blues
Menu, World, Add, Gypsy, Gypsy
Menu, World, Add, Minor Gypsy, GypsyM
Menu, World, Add, Arabic/Double Harmonic, Arabic
Menu, World, Add, Hungarian Minor, HungarianM
Menu, World, Add, Pelog, Pelog
Menu, World, Add, Bhairav, Bhairav
Menu, World, Add, Spanish, Spanish
Menu, World, Add,
Menu, World, Add, Hirajōshi, Hirajoshi
Menu, World, Add, In-Sen, Insen
Menu, World, Add, Iwato, Iwato
Menu, World, Add, Kumoi, Kumoi
Menu, Chromatic, Add, Chromatic/Freeform Jazz, chromatic
Menu, Chromatic, Add, Wholetone, wholetone
Menu, Chromatic, Add, Diminished, diminishedscale
Menu, Chromatic, Add, Dominant Bebop, dominantbebop
Menu, Chromatic, Add, Super Locrian, Superlocrian

Menu, Chords, Add, Octaves, octaves
Menu, Chords, Add, Power Chord, pwrchord
Menu, Chords, Add
Menu, Chords, Add, Major, maj
Menu, Chords, Add, Minor, min
Menu, Chords, Add, Maj7, maj7
Menu, Chords, Add, Min7, m7
Menu, Chords, Add, Maj9, maj9
Menu, Chords, Add, Min9, m9
Menu, Chords, Add, 7, dominant7
Menu, Chords, Add, Augmented, aug
Menu, Chords, Add, Diminished, dim
Menu, Chords, Add,
Menu, Chords, Add, Triad (Fold), fold3
Menu, Chords, Add, Seventh (Fold), fold7
Menu, Chords, Add, Ninth (Fold), fold9

Menu, Pianomenu, Add, Scales, :Scales
Menu, Pianomenu, Add, Chords, :Chords
Menu, Scales, Add, Pentatonic Based, :Pentatonic Based
Menu, Scales, Add, World, :World
Menu, Scales, Add, Chromaitc, :Chromatic

skipnormalscales:
}