---
title: "SVG Test"
format: html
editor: visual
---


## Embed SVG in Doc



::: {.cell}

```{.r .cell-code}
library(svglite)
```

::: {.cell-output .cell-output-stderr}
```
Warning: package 'svglite' was built under R version 4.1.3
```
:::

```{.r .cell-code}
svglite("hist.svg", width = 4, height = 4, standalone=F)
x <- iris$Sepal.Length
par( mar=c(0,0,0,0) )
hist( x, axes=F, ann=FALSE, col="steelblue", border="white" ) 
dev.off()
```

::: {.cell-output .cell-output-stdout}
```
png 
  2 
```
:::

```{.r .cell-code}
# copy and paste resulting code into doc below
```
:::


The function **svgstring** captures text version directly. 


::: {.cell}

```{.r .cell-code}
s <- svgstring( width = 2, height = 2, standalone=F )
par( mar=c(0,0,0,0) )
hist( x, axes=F, ann=FALSE, col="steelblue", border="white" ) 
dev.off() 
```

::: {.cell-output .cell-output-stdout}
```
png 
  2 
```
:::

```{.r .cell-code}
s()
```

::: {.cell-output .cell-output-stdout}
```
<svg class='svglite' width='144.00pt' height='144.00pt' viewBox='0 0 144.00 144.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwxNDQuMDB8MC4wMHwxNDQuMDA='>
    <rect x='0.00' y='0.00' width='144.00' height='144.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwxNDQuMDB8MC4wMHwxNDQuMDA=)'>
<rect x='5.33' y='117.16' width='16.67' height='21.51' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='22.00' y='22.54' width='16.67' height='116.13' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='38.67' y='22.54' width='16.67' height='116.13' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='55.33' y='9.63' width='16.67' height='129.03' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='72.00' y='5.33' width='16.67' height='133.33' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='88.67' y='61.25' width='16.67' height='77.42' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='105.33' y='112.86' width='16.67' height='25.81' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='122.00' y='112.86' width='16.67' height='25.81' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>
```
:::
:::



## Adding to QMD

Customize by adding class='hist' to a DIV tag: 


```{=html}
<div class='hist'>
<svg class='svglite' width='288.00pt' height='288.00pt' viewBox='0 0 288.00 288.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwyODguMDB8MC4wMHwyODguMDA='>
    <rect x='0.00' y='0.00' width='288.00' height='288.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwyODguMDB8MC4wMHwyODguMDA=)'>
<rect x='10.67' y='234.32' width='33.33' height='43.01' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='44.00' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='77.33' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='110.67' y='19.27' width='33.33' height='258.06' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='144.00' y='10.67' width='33.33' height='266.67' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='177.33' y='122.49' width='33.33' height='154.84' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='210.67' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='244.00' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>
</div>
```



<br>
<hr>
<br>


<svg class='svglite' width='288.00pt' height='288.00pt' viewBox='0 0 288.00 288.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwyODguMDB8MC4wMHwyODguMDA='>
    <rect x='0.00' y='0.00' width='288.00' height='288.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwyODguMDB8MC4wMHwyODguMDA=)'>
<rect x='10.67' y='234.32' width='33.33' height='43.01' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='44.00' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='77.33' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='110.67' y='19.27' width='33.33' height='258.06' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='144.00' y='10.67' width='33.33' height='266.67' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='177.33' y='122.49' width='33.33' height='154.84' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='210.67' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='244.00' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>


<br>
<hr>
<br>





::: {.cell}

```{.r .cell-code}
x <- 
"<svg class='svglite' width='288.00pt' height='288.00pt' viewBox='0 0 288.00 288.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwyODguMDB8MC4wMHwyODguMDA='>
    <rect x='0.00' y='0.00' width='288.00' height='288.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwyODguMDB8MC4wMHwyODguMDA=)'>
<rect x='10.67' y='234.32' width='33.33' height='43.01' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='44.00' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='77.33' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='110.67' y='19.27' width='33.33' height='258.06' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='144.00' y='10.67' width='33.33' height='266.67' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='177.33' y='122.49' width='33.33' height='154.84' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='210.67' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='244.00' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>"
```
:::


```{.r .cell-code}
cat( x )
```

<svg class='svglite' width='288.00pt' height='288.00pt' viewBox='0 0 288.00 288.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwyODguMDB8MC4wMHwyODguMDA='>
    <rect x='0.00' y='0.00' width='288.00' height='288.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwyODguMDB8MC4wMHwyODguMDA=)'>
<rect x='10.67' y='234.32' width='33.33' height='43.01' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='44.00' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='77.33' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='110.67' y='19.27' width='33.33' height='258.06' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='144.00' y='10.67' width='33.33' height='266.67' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='177.33' y='122.49' width='33.33' height='154.84' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='210.67' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='244.00' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>




<br>
<hr>
<br>


<svg class='svglite' width='288.00pt' height='288.00pt' viewBox='0 0 288.00 288.00'>
<defs>
  <style type='text/css'><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
    .svglite text {
      white-space: pre;
    }
  ]]></style>
</defs>
<rect width='100%' height='100%' style='stroke: none; fill: #FFFFFF;'/>
<defs>
  <clipPath id='cpMC4wMHwyODguMDB8MC4wMHwyODguMDA='>
    <rect x='0.00' y='0.00' width='288.00' height='288.00' />
  </clipPath>
</defs>
<g clip-path='url(#cpMC4wMHwyODguMDB8MC4wMHwyODguMDA=)'>
<rect x='10.67' y='234.32' width='33.33' height='43.01' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='44.00' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='77.33' y='45.08' width='33.33' height='232.26' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='110.67' y='19.27' width='33.33' height='258.06' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='144.00' y='10.67' width='33.33' height='266.67' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='177.33' y='122.49' width='33.33' height='154.84' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='210.67' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
<rect x='244.00' y='225.72' width='33.33' height='51.61' style='stroke-width: 0.75; stroke: #FFFFFF; fill: #4682B4;' />
</g>
</svg>


<br>
<hr>
<br>


```
<style>

svg {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 250px;
  height: 150px;
}

.hist svg {width: 10%; height: auto;}

</style>
```



```{=html}
<style>

svg {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 250px;
  height: 150px;
}

.hist svg {width: 10%; height: auto;}

</style>
```

::: {.cell}

:::

