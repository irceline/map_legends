### Read me

Use [Inkscape](https://inkscape.org/en/) to edit the map legend files.

Export files as `.png` with the following settings:

| orientation | web (90dpi) | print (300dpi) |
|:-----------:|------------:|---------------:|
|  portrait   |       200px |          800px |
|  landscape  |       500px |         1800px |

#### Names
format:

`{no2/o3/pm25/pm10}_{anmean/excday/24hour/8hour/hour}_{wide}_{hires}_{EN/NL/FR/DE}.png`

e.g.:
* o3_anmean_NL.png
* pm10_excday_EN_hires.png
* no2_anmean_EN_wide_hires.png


#### Copy to

```sh
rsync pm10_excday_EN_hires.png celinair@scripts.irceline.be:/home/celinair/www/legend/
```

Legends will be available via e.g.:

```html
http://www.irceline.be/legend/pm10_anmean_NL.png
```
