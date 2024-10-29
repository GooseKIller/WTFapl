mnd←{
     z←⍵
     level←⍺
     i←0
     f←{⍝ ⍺ = i ⍵ = number level const
         (⍺≥⍵[2]):⍵[2]
         (2≤(| (⍵[1]) )):⍺
         (⍺+1) ∇ (⍵[1]*2+⍵[3]) (⍵[2]) (⍵[3])
     }
     0 f z level ⍵
}
line←{((⍳⍵)-(⍵÷2))÷⍵}
clr ← {
    ⍵ = 255: '█'
    ⍵ = 4: '▓'  ⍝ Очень светлый серый
    ⍵ = 3: '▒'  ⍝ Светлый серый
    ⍵ = 2: '░'  ⍝ Темный серый
    ⍵ = 1: '.'  ⍝ Очень темный серый
    ' '         ⍝ Пробел для остальных значений
}
mandSet ← {255 mnd ⍵}
cmps←{clr mandSet ⍵}
cmps¨(⊣∘.{⍺+⍵×0j1}⊣) (40÷⍨¯75+⍳150)
