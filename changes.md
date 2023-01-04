# CHANGES

I got to change a few files to get it working. Hopefully this help those who are lost:

## printerInterface.py

Change the Socket Target (Line 259)

```python
		self.ks = KlippySocket('PATH/TO/Klippy-Socket', callback=self.klippy_callback)
```

## run.py

1. Change to Pin Numbers to your used Pin numbers on the Raspi
2. Add your API-Key. You will get it if you run the 'fetch-apikey.sh' in the folder moonraker/scripts. If you got a custom installation you got to change the DATABASE_PATH and the MOONRAKER_ENV to match your installation

## run.sh
Change Line 10 to point to your run.py file

```bash
  /usr/bin/env python3 /home/USER/DWIN_T5UIC1_LCD_E3S1/run.py  > /tmp/lcd.log 2>&1 &
```

## simpleLCD.service
Change the target of the service to your changed run.sh

```bash
 ExecStart=/bin/sh -c '/home/USER/DWIN_T5UIC1_LCD_E3S1/run.sh'
```