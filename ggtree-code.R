library(ggplot2)
library(ggtree)
library(treeio)

beast_tree <- read.beast("final-tree.tre")
p1 <-  ggtree(beast_tree, mrsd='1990-01-01') +
  theme_tree2(panel.grid.major.x=element_line()) + 
  ggtitle("    HA") +
  geom_range(range='height_0.95_HPD', color='blue', alpha=2, size=.3) +
  geom_tippoint(aes(subset = (node == 303)), , size=3, shape=23, fill="steelblue") +
  geom_highlight(node = 311 , fill = "red")  +
  scale_x_ggtree(breaks = c(1973.5,1979,1984.5,1990))
p1
cowplot::plot_grid(p1, nrow=1, labels = LETTERS[1:2])
