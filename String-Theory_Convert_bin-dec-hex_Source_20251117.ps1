<#
 ____                  _            _       _____ _           
|  _ \  __ _ _ __ __ _(_) ___ _ __ ( )___  |_   _(_)_ __  ___ 
| | | |/ _` | '__/ _` | |/ _ \ '_ \|// __|   | | | | '_ \/ __|
| |_| | (_| | | | (_| | |  __/ | | | \__ \   | | | | |_) \__ \
|____/ \__,_|_|  \__,_|_|\___|_| |_| |___/   |_| |_| .__/|___/
                                                   |_|        

###############################################################################

 Title :   	PowerShell: Convert Between Binary, Decimal & Hex (Step-by-Step)
 Channel:	https://www.youtube.com/@darienstips9409
 Link:		https://www.youtube.com/watch?v=8UFcG6gOsxE

###############################################################################
#>


##### Convert Dec to Hex ######################################################

$dec=9409
$dec.ToString("X") #Output is uppercase
$dec.ToString("x") #Output is lowercase

$dec=94
$dec.ToString("X4") #Pad output

$hex=$dec.ToString("X")
$hex

[Convert]::ToString($dec, 16) #Output is lowercase
[Convert]::ToString($dec, 16).ToUpper() #Output is uppercase
[Convert]::ToString($dec, 16).ToUpper().PadLeft(4, '0') #Output is uppercase and padded


##### Convert Dec to Bin ######################################################

[Convert]::ToString($dec, 2)
[Convert]::ToString($dec, 2).PadLeft(8,"0")


##### Convert Hex to Dec ######################################################

$hexValIn="D715"
[Convert]::ToInt32($hexValIn, 16)

$bigHexValIn="7FFFFFFFFFFFFFFF"
[Convert]::ToInt32($bigHexValIn, 16)

$lrgNegHexValIn="FF123456"
$bigNegHexValIn="eFFFFFFFFFFFFFFF"
[Convert]::ToInt32($lrgNegHexValIn, 16)
[Convert]::ToInt64($bigNegHexValIn, 16)

[Convert]::ToUInt32($lrgNegHexValIn, 16)
[Convert]::ToUInt64($bigNegHexValIn, 16)

[UInt32]::Parse($lrgNegHexValIn, [System.Globalization.NumberStyles]::HexNumber)
[UInt64]::Parse($bigNegHexValIn, [System.Globalization.NumberStyles]::HexNumber)


##### Convert Hex to Bin ######################################################

$hexIn="1A"
[Convert]::ToString([Convert]::ToInt32($hexIn, 16), 2)
[Convert]::ToString([Convert]::ToInt32($hexIn, 16), 2).PadLeft(8,"0")

$hexIn="AFF"
[Convert]::ToString([Convert]::ToInt32($hexIn, 16), 2).PadLeft(16,"0")

$decIn = [Convert]::ToInt32($hexIn, 16)
[Convert]::ToString($decIn, 2).PadLeft(16,"0")


##### Convert Bin to Dec ######################################################

$binIn = "101010"
[Convert]::ToInt32($binIn, 2)

$largeBinIn = "1010100010111010101011001011001111110101010110"
[Convert]::ToUInt64($largeBinIn, 2)


##### Convert Bin to Hex ######################################################

$binIn="101010"
[Convert]::ToString([Convert]::ToInt32($binIn, 2), 16).ToUpper()
[Convert]::ToString([Convert]::ToInt32($binIn, 2), 16).ToUpper().PadLeft(2, "0")

$binIn = "101010111111"
[Convert]::ToString([Convert]::ToInt32($binIn, 2), 16).ToUpper().PadLeft(4, "0")
$decIn = [Convert]::ToInt32($binIn, 2)
[Convert]::ToString($decIn, 16).ToUpper().PadLeft(4, "0")

