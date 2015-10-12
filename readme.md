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

See step by step guide below

#### Copy to

```sh
rsync pm10_excday_EN_hires.png celinair@scripts.irceline.be:/home/celinair/www/legend/
```

Legends will be available via e.g.:

```html
http://www.irceline.be/legend/pm10_anmean_NL.png
```

#### Step by step guide

##### web export

1. open `.svg` in Inkscape
2. press `5` to see all
3. do edits as desired
4. Export PNG Image (Shift+Ctrl+E)
5. select `Drawing` tab to have `width` and `height` resized automatically
6. select `Page` tab
7. Choose `Filename`, e.g. `./index/index_wide_FR.png`
8. Select `Export`
9. If desired select `Save` when closing the document

##### hires export (for print)
1. open `.svg` in Inkscape
2. press `5` to see all
3. do edits as desired
4. Export PNG Image (Shift+Ctrl+E)
5. select `Drawing` tab to have `width` and `height` resized automatically
6. select `Page` tab
7. **Change `Image size` > `Width` or `Height` to `1800` pixels at `90` (or `300`) dpi**
8. Choose `Filename`, e.g. `./index/index_wide_FR_hires.png` - **add `_hires` to filename** - see section `Names` above
9. Select `Export`
10. **When closing the document select `Close without saving`**
