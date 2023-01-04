#!/usr/bin/env python3
from dwinlcd import DWIN_LCD


encoder_Pins = (26, 19)
button_Pin = 6

LCD_COM_Port = '/dev/ttyAMA0'

# Get your API Key via the  fetch-apikey.sh script in moonraker.
# Changes to do in the script:
# Change the DATABASE_PATH to match the path to the database (Inkludes the files data.mdb and lock.mdb)
# Change the MOONRAKER_ENV to match the path to the moonraker envoirment

# API_Key = 'XXXXX'

DWINLCD = DWIN_LCD(
        LCD_COM_Port,
        encoder_Pins,
        button_Pin,
        API_Key
)
