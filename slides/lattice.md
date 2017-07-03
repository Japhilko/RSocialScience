Das lattice-Paket
-----------------

> It is designed to meet most typical graphics needs with minimal
> tuning, but can also be easily extended to handle most nonstandard
> requirements.

<http://stat.ethz.ch/R-manual/R-devel/library/lattice/html/Lattice.html>

Der Datensatz - Scores on A-level Chemistry in 1997
---------------------------------------------------

    library("mlmRev")
    data(Chem97)

<table>
<thead>
<tr class="header">
<th align="left">variables</th>
<th align="left">categories</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">lea</td>
<td align="left">Local Education Authority</td>
</tr>
<tr class="even">
<td align="left">school</td>
<td align="left">School identifier</td>
</tr>
<tr class="odd">
<td align="left">student</td>
<td align="left">Student identifier</td>
</tr>
<tr class="even">
<td align="left">score</td>
<td align="left">Point score on A-level Chemistry in 1997</td>
</tr>
<tr class="odd">
<td align="left">gender</td>
<td align="left">Student's gender</td>
</tr>
<tr class="even">
<td align="left">age</td>
<td align="left">Age in month, centred at 222 months or 18.5 years</td>
</tr>
<tr class="odd">
<td align="left">gcsescore</td>
<td align="left">Average GCSE score of individual</td>
</tr>
<tr class="even">
<td align="left">gcsecnt</td>
<td align="left">Average GCSE score of individual, centered at mean</td>
</tr>
</tbody>
</table>

Histogramm mit Lattice
----------------------

    library("lattice")
    histogram(~ gcsescore, data = Chem97)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-4-1.png)

Histogramm mit Lattice
----------------------

      histogram(~ gcsescore | factor(score),data = Chem97)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-5-1.png)

Die Dichte mit Lattice zeichnen
-------------------------------

    densityplot(~ gcsescore | factor(score), Chem97, 
        groups=gender,plot.points=FALSE,auto.key=TRUE)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-6-1.png)

[EinfÃ¼hrung in das Paket
lattice](http://www.isid.ac.in/~deepayan/R-tutorials/labs/04_lattice_lab.pdf)

Boxplot mit Lattice zeichnen
----------------------------

    bwplot(factor(score) ~ gcsescore | gender, Chem97)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-7-1.png)

Boxplot mit Lattice zeichnen
----------------------------

    bwplot(gcsescore ~ gender | factor(score), Chem97,
     layout = c(6, 1))

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-8-1.png)

Univariate Plots
----------------

    barchart(yield ~ variety | site, data = barley,
             groups = year, layout = c(1,6), stack = TRUE,
             auto.key = list(space = "right"),
             ylab = "Barley Yield (bushels/acre)",
             scales = list(x = list(rot = 45)))

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-9-1.png)

Densityplot
-----------

    densityplot(~height|voice.part,data=singer,layout = c(2,4),
                xlab = "Height (inches)",bw = 5)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-10-1.png)

Bivariate Plots
---------------

    qq(gender ~ gcsescore | factor(score), Chem97,
       f.value = ppoints(100), type = c("p", "g"), aspect = 1)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-11-1.png)

xyplot
------

    xyplot(Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species,
           data = iris, scales = "free", layout = c(2, 2),
           auto.key = list(x = .6, y = .7, corner = c(0, 0)))

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-12-1.png)

Multivariate Plots
------------------

    splom(~iris[1:4], groups = Species, data = iris)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-13-1.png)

    super.sym <- trellis.par.get("superpose.symbol")
    splom(~iris[1:4], groups = Species, data = iris,
          panel = panel.superpose,
          key = list(title = "Three Varieties of Iris",
                     columns = 3, 
                     points = list(pch = super.sym$pch[1:3],
                     col = super.sym$col[1:3]),
                     text = list(c("Setosa", "Versicolor", "Virginica"))))

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-14-1.png)

parallelplot
------------

    parallelplot(~iris[1:4] | Species, iris)

![](..\lattice_files/figure-markdown_strict/unnamed-chunk-15-1.png)
