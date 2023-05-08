#!/usr/bin/env python3
from dwinlcd import DWIN_LCD

encoder_Pins = (26, 19)
button_Pin = 13
LCD_COM_Port = '/dev/ttyAMA0'
API_Key = 'eb56bb488d3143708656f60074f70af0'

DWINLCD = DWIN_LCD(
        LCD_COM_Port,
        encoder_Pins,
        button_Pin,
        API_Key
)
