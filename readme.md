# Read me
Map legends for different air quality pollutants.
## Scales based on the BelATMO index
More information about the BelATMO index: http://www.irceline.be/en/belatmo
## Names

```
{pollutant}_{period}_{language}_{landscape}.svg
```
E.g.:
* no2_anmean_NL.svg
* o3_8hmean_DE.svg

Legends are available via e.g.:

```html
http://www.irceline.be/legend/pm10_anmean_NL.svg
```

### Options
#### Pollutant
| abbreviation |                           description                            |
|:-------------|:----------------------------------------------------------------:|
| no2          |                Nitrogen dioxide (NO<sub>2</sub>)                 |
| o3           |                      Ozone (O<sub>3</sub>)                       |
| pm10         |  Particulate matter (mass) smaller than 10 µm (PM<sub>10</sub>)  |
| pm25         | Particulate matter (mass) smaller than 2.5 µm (PM<sub>2.5</sub>) |
| so2          |                 sulphur dioxide (SO<sub>2</sub>)                 |


#### Period
| abbreviation |                                        description                                        |
|:-------------|:-----------------------------------------------------------------------------------------:|
| hmean        |                                 hourly mean concentration                                 |
| 8hmean       | mean concentration during 8 hours (8 hour running mean, highest 8 hour mean today , etc.) |
| 24hmean      |        mean concentration during 24 hours (24 hour running mean, daily mean, etc.)        |
| anmean       |                                 annual mean concentration                                 |

#### Language
| abbreviation | description |
|:-------------|:-----------:|
| EN           |   English   |
| NL           |    Dutch    |
| FR           |   French    |
| DE           |   German    |

#### Landscape
Legends are in "portrait" besides where `landscape` is added to the end of the legend name.

### batch convert `SVG` to `PNG`
use e.g. [ImageMagick](http://www.imagemagick.org).
Windows/Linux:
http://www.imagemagick.org/script/binary-releases.php
OSX:
http://cactuslab.com/imagemagick/ (be sure to install version with `fontconfig freetype x` - needs [XQuartz](http://www.xquartz.org/))

In:
```sh
convert -list configure
```
`DELEGATES` should also list `fontconfig freetype`.

using `convert`:
```sh
cd /dir/with/svgs
for i in *.svg ; do convert "$i" "${i%.*}.png" ; done
```
For in a printed publication increase the resolution with the `-density` parameter to e.g. 300px:
```sh
for i in *.svg ; do convert -density 300 "$i" "${i%.*}.png" ; done
```
For retina displays this should be sufficient:
```sh
for i in *.svg ; do convert -density 144 "$i" "${i%.*}.png" ; done
```

### Editing `SVG` in `Inkscape`

When using [Inkscape](https://inkscape.org/en/) to edit the map legend files, be sure to save the files as `Optimized SVG` (not `Inkscape SVG` or `Plain SVG` - bad compatibility outside of `Inkscape`) with only the following options:
* `Options` tab:
  * `Convert CSS attributes to XML attributes`
* `Ids` tab:
  * `Remove unused ID names for elements`
  * `Preserve manual created ID names not ending with digits`

After saving `Optimized SVG` you can format the `ASCII` code with the [xml-formatter](https://atom.io/packages/xml-formatter) plugin for [Atom](https://atom.io/) to make it easier readable.
