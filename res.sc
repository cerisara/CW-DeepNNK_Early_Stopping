# This data file was generated by the Spreadsheet Calculator Improvised (sc-im)
# You almost certainly shouldn't edit it.

newsheet "Sheet1"
movetosheet "Sheet1"
offscr_sc_cols 0
offscr_sc_rows 0
nb_frozen_rows 0
nb_frozen_cols 0
nb_frozen_screenrows 0
nb_frozen_screencols 0
format B 10 4 0
format C 10 0 0
format D 10 4 0
format E 10 0 0
leftstring A0 = "avg:"
let B0 = @avg(B3:B21)
let D0 = @avg(D3:D21)
leftstring A1 = "std:"
let B1 = @stddev(B3:B20)
let D1 = @stddev(D3:D20)
leftstring B2 = "dev"
leftstring C2 = "Nep"
leftstring D2 = "unsup"
leftstring E2 = "Nep"
let B3 = 0.8235
let C3 = 78
let D3 = 0.8215
let E3 = 63
let B4 = 0.8215
let C4 = 68
let D4 = 0.849
let E4 = 71
let B5 = 0.837
let C5 = 60
let D5 = 0.8195
let E5 = 87
goto E5
mark a "Sheet1" B1
