# Read me
Map legends for different air quality pollutants.
## Scales based on the BelAQI index (update november 2022)
More information about the BelAQI index: https://www.irceline.be/en/air-quality/measurements/air-quality-index-november-2022/info_nov2022
## Names
```
{pollutant}_{period}_{language}_{landscape}.svg
```
E.g.:
* no2_anmean_NL.svg
* o3_8hmean_DE.svg
* pm25_24hmean_FR.svg
* pm10_excday_NL_landscape.svg

Legends are available via e.g.:

```html
http://www.irceline.be/air/legend/pm10_anmean_FR.svg
http://www.irceline.be/air/legend/pm25_anmean_NL_landscape.svg
```
See listing: http://www.irceline.be/air/legend/

### Options
#### Pollutant
| abbreviation |                           description                            |
|:-------------|:----------------------------------------------------------------:|
| bc           |                        Black Carbon (BC)                         |
| c6h6         |               Benzene (C<sub>6</sub>H<sub>6</sub>)               |
| co           |                       Carbon Monoxide (CO)                       |
| index        |      [BelAQI index](https://www.irceline.be/nl/luchtkwaliteit/metingen/belaqi-luchtkwaliteitsindex-november-2022/informatie/)    |
| no2          |                Nitrogen dioxide (NO<sub>2</sub>)                 |
| o3           |                      Ozone (O<sub>3</sub>)                       |
| pm10         |  Particulate matter (mass) smaller than 10 µm (PM<sub>10</sub>)  |
| pm25         | Particulate matter (mass) smaller than 2.5 µm (PM<sub>2.5</sub>) |
| so2          |                 sulphur dioxide (SO<sub>2</sub>)                 |

#### Period
| abbreviation |                                            description                                             |
|:-------------|:--------------------------------------------------------------------------------------------------:|
| 24hmean      |            mean concentration during 24 hours (24 hour running mean, daily mean, etc.)             |
| 8hmean       |     mean concentration during 8 hours (8 hour running mean, highest 8 hour mean today , etc.)      |
| anmean       |                                     annual mean concentration                                      |
| aot40        |            Accumulated Ozone exposure over a Threshold of 40 ppb (=80 µg/m³) - (AOT40)             |
| aot60        |           Accumulated Ozone Exposure above a Threshold of 60 ppb (=120 µg/m³) - (AOT60)           |
| excday       | number of days per year when the daily mean was higher than the EU-treshold of 50 µg/m<sup>3</sup> |
| hmean        |                                     hourly mean concentration                                      |
| net60        |              Number of Exceedances above a Threshold of 60ppb (=120 µg/m³) - (NET60)               |


#### Language
| abbreviation | description |
|:-------------|:-----------:|
| EN           |   English   |
| NL           |    Dutch    |
| FR           |   French    |
| DE           |   German    |

#### Landscape
Legends are in "portrait" besides where `landscape` is added to the end of the legend name, e.g.:
```html
http://www.irceline.be/legend/pm25_anmean_NL_landscape.svg
```

### Colours
#### BelAQI
| index | NL | FR | EN | DE | hex | RGB |
|:------|:---|:---|:---|:---|:----|:----|
| 1 | uitstekend | excellent | excellent | ausgezeichnet | #0000FF | 0 0 255 |
| 2 |	zeer goed | très bon | very good  | sehr gut | #0099FF | 0 153 255 |
| 3 | goed | bon | good | gut | #009900 | 0 153 0 |
| 4 | vrij goed | assez bon | fairly good | relativ gut | #00FF00 | 0 255 0 |
| 5 | middelmatig | moyen | moderate | mittelmäßig | #FFFF00 | 255 255 0 |
| 6 | ondermaats | insuffisant | poor | ungenügend | #FFBB00 | 255 187 0 |
| 7 | vrij slecht | assez mauvais | very poor | relativ schlecht | #FF6600 | 255 102 0 |
| 8 | slecht | mauvais | bad | schlecht | #FF0000 | 255 0 0 |
| 9 | zeer slecht | très mauvais | very bad  | sehr schlecht | #CC0000 | 204 0 0 |
| 10 | uitermate slecht | exécrable | horrible | extrem schlecht | #990099 | 153 0 153 |

For copy/paste in style sheets (alt+select to select column in text):

BelAQI:
```
#0000FF
#0099FF
#009900
#00FF00
#FFFF00
#FFBB00
#FF6600
#FF0000
#CC0000
#990099
```

#### Old colours BelATMO

|     RGB     | websafe | websafe2 | websafe orig |
|:-----------:|:-------:|:--------:|:------------:|
|  0 102 204  | #0066CC | #1166CC  |   #0000FF    |
| 51 204 204  | #33CCCC | #119999  |   #007EFD    |
| 153 255 153 | #99FF99 | #99DD77  |   #009800    |
| 255 255 153 | #FFFF99 | #EEEE33  |   #00FF00    |
|  255 238 8  | #FFEE00 | #FBD30B  |   #CCFF33    |
|  255 102 0  | #FF6600 | #FF4411  |   #F8E748    |
|   238 0 0   | #EE0000 | #DD0000  |   #FF8000    |
|  170 34 0   | #AA2200 | #880000  |   #FF0000    |
|  153 0 153  | #990099 | #770077  |   #C00000    |
|    0 0 0    | #000000 | #000000  |   #5A0000    |



### batch convert `SVG` to `PNG`
Use e.g.: [ImageMagick](http://www.imagemagick.org).

Windows/Linux:
http://www.imagemagick.org/script/binary-releases.php

OSX:
http://cactuslab.com/imagemagick/ (be sure to install version with `fontconfig freetype x` which needs [XQuartz](http://www.xquartz.org/))

In:
```sh
convert -list configure
```
`DELEGATES` should list `fontconfig freetype`.

Using [`convert`](http://www.imagemagick.org/script/convert.php) of [ImageMagick](http://www.imagemagick.org):
```sh
cd /dir/with/svgs
for i in *.svg ; do convert "$i" "${i%.*}.png" ; done
```
For in a printed publications increase the resolution with the `-density` parameter to e.g. 300px:
```sh
for i in *.svg ; do convert -density 300 "$i" "${i%.*}.png" ; done
```
For retina displays this should be sufficient:
```sh
for i in *.svg ; do convert -density 144 "$i" "${i%.*}.png" ; done
```
But in general the default 72dpi output of `convert` is sufficient for e.g. this purpose:
```html
<img src="http://www.irceline.be/air/legend/pm10_anmean_FR.svg" onerror="this.onerror=null; this.src='http://www.irceline.be/air/legend/pm10_anmean_FR.png'">
<img src="http://www.irceline.be/air/legend/no2_anmean_EN.svg" onerror="this.onerror=null; this.src='http://www.irceline.be/air/legend/no2_anmean_EN.png'" style="background-color:rgba(255,255,255,0.75);" alt="legend" >
```
After [CSS-Tricks](https://css-tricks.com/using-svg/)

See [browser support](http://caniuse.com/#feat=svg-css) of `SVG`.

### Editing `SVG` in `Inkscape`

When using [Inkscape](https://inkscape.org/en/) to edit the map legend files, be sure to save the files as `Optimized SVG` (not `Inkscape SVG` or `Plain SVG` - bad compatibility outside of `Inkscape`) with only the following options activated:
* `Options` tab:
  * `Convert CSS attributes to XML attributes`
* `Ids` tab:
  * `Remove unused ID names for elements`
  * `Preserve manual created ID names not ending with digits`

After saving `Optimized SVG` you can format the `ASCII` code with the [xml-formatter](https://atom.io/packages/xml-formatter) plugin for [Atom](https://atom.io/) to make it easier readable in a text-editor.

### Compatibility with `QGIS`

`QGIS` only supports [Scalable Vector Graphics (SVG) Tiny 1.2 Specification](https://www.w3.org/TR/SVGMobile12/)

The <tspan> element is not supported. A text area could be split into multiple lines like so:

```xml
<text transform="matrix(1 0 0 1 25 261.35)">
  <tspan x="0" y="0" fill="#231F20" font-family="Arial" font-size="12">measuring station:</tspan>
  <tspan x="0" y="14.4" fill="#231F20" font-family="Arial" font-size="12">colour represents</tspan>
  <tspan x="0" y="28.8" fill="#231F20" font-family="Arial" font-size="12">the measured</tspan>
  <tspan x="0" y="43.2" fill="#231F20" font-family="Arial" font-size="12">concentration</tspan>
</text>
```
When written like this:

```xml
<text font-size="12" font-family="Arial" transform="translate(25 261.35)" fill="#231F20">measuring station:</text>
<text font-size="12" font-family="Arial" transform="translate(25 275.75)" fill="#231F20">colour represents</text>
<text font-size="12" font-family="Arial" transform="translate(25 290.15)" fill="#231F20">the measured</text>
<text font-size="12" font-family="Arial" transform="translate(25 304.55)" fill="#231F20">concentration</text>
```
... it causes no problems in `QGIS` and is also correctly interpreted by all browsers.

See more details:
http://osgeo-org.1560.x6.nabble.com/SVG-handling-in-qgis-td4115119.html
