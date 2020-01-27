# rlrankdistribution
R Data Package for Rocket League Competitive Seasons Rank Distributions

Data Package for the R programming language that contains the official rank distribution data published by the game development studio Psyonix for each competitive season on reddit.

The official rank distribution for seasons 1-3 has not been published. At least I could not find the respective reddit posts.

## Installation

To install this package you need to install `devtools` first.

```R
install.packages("devtools")
```

Then you need to load the package.

```R
library(devtools)
```

Now you can install this package from this Github repository.

```R
install_github("dani-gg/rlrankdistribution")
```

## Usage

To use the data package you need load the package first.

```R
library(rlrankdistribution)
```

For every season there is a separate `data.frame` with the name of the season, e.g.:

```R
> Season4
               Standard Doubles SoloDuel SoloStandard
Bronze 1         0.0163  0.0477   0.0334       0.0370
Bronze 2         0.0360  0.0824   0.0814       0.0571
Bronze 3         0.0664  0.1159   0.1250       0.0771
Silver 1         0.1071  0.1391   0.1615       0.1117
Silver 2         0.1297  0.1330   0.1454       0.1215
Silver 3         0.1323  0.1153   0.1217       0.1178
Gold 1           0.1399  0.1066   0.1081       0.1269
Gold 2           0.1104  0.0785   0.0770       0.0990
Gold 3           0.0805  0.0557   0.0493       0.0741
Platinum 1       0.0721  0.0482   0.0428       0.0699
Platinum 2       0.0427  0.0283   0.0228       0.0419
Platinum 3       0.0252  0.0171   0.0132       0.0258
Diamond 1        0.0207  0.0146   0.0091       0.0200
Diamond 2        0.0106  0.0078   0.0043       0.0097
Diamond 3        0.0044  0.0038   0.0022       0.0049
Champion 1       0.0033  0.0034   0.0016       0.0034
Champion 2       0.0014  0.0014   0.0006       0.0013
Champion 3       0.0005  0.0005   0.0003       0.0005
Grand Champion   0.0005  0.0007   0.0003       0.0004

> typeof(Season4)
[1] "list"

> class(Season4)
[1] "data.frame"
```

As you can see the rownames are the names of the rank tier. You can also access only one column of the data for one competitive mode, e.g.:

```R
> Season4$Standard
 [1] 0.0163 0.0360 0.0664 0.1071 0.1297 0.1323 0.1399 0.1104 0.0805 0.0721 0.0427 0.0252 0.0207
[14] 0.0106 0.0044 0.0033 0.0014 0.0005 0.0005
```

To access the documentation you can just type:

```R
> ?Season4
```

You can plot the data with the `plot()` function:

```R
> plot(Season4$Doubles, type = "b", xaxt="n", xlab="")
> axis(1, at=1:length(rownames(Season4)), las=2, labels=rownames(Season4))
```

## Links to posts on reddit

For reconciliation, here are the links to the official posts by Psyonix about the respective season rank distribution:

* [Season 12 Rank Distribution](https://www.reddit.com/r/RocketLeague/comments/elflp4/season_12_rank_distribution/)
* [Season 11 Rank Distribution](https://www.reddit.com/r/RocketLeague/comments/d2c7xa/season_11_rank_distribution/)
* [Season 10 Rank Distribution](https://www.reddit.com/r/RocketLeague/comments/bvac8t/season_10_rank_distribution/)
* [Season 9 Rank Distribution](https://www.reddit.com/r/RocketLeague/comments/avhibf/season_9_rank_distribution/)
* [Season 8 Rank Distribution Extravaganza!](https://www.reddit.com/r/RocketLeague/comments/9kw21p/season_8_rank_distribution_extravaganza/)
* [Holy Dominus, it's the Season 7 Rank Distribution!](https://www.reddit.com/r/RocketLeague/comments/8omfoq/holy_dominus_its_the_season_7_rank_distribution/)
* [Season 6 Rank Distribution Data](https://www.reddit.com/r/RocketLeague/comments/7wgrm5/season_6_rank_distribution_data/)
* [Season 5 Rank Distribution Data](https://www.reddit.com/r/RocketLeague/comments/7a5bq7/season_5_rank_distribution_data/)
* [It's finally here! Competitive Season 4 Rank Distribution](https://www.reddit.com/r/RocketLeague/comments/6ywtve/its_finally_here_competitive_season_4_rank/)
