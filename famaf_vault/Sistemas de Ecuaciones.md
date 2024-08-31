# Resolviendo Sistemas de Ecuaciones con Tres Variables

para resolver sistemas de ecuaciones de tres variables, conocidas como sistemas tres-por-tres, la principal herramienta se llama Eliminacion Gaussiana, nombrada en honor al prolifico matematico aléman Karl Friedrich Gauss. Si bien no existe un orden definitivo de operaciones a realizar, hay metodos especificos sobre que movimientos se pueden realizar. El objetivo es eliminar una variable por vez y conseguir una **forma triangular**, la forma ideal de un sistema de tres-por-tres porque nos permite sustituir trivialmente para encontrar una solucion $(x,y,z)$, la cual llamamos una ordenada triple.

### Un sistema triangular se ve de la siguiente forma:
$Ax + By + Cz = D$
$Ey + Fz = G$
$Hz = K$

En la ultima ecuacion podemos resolver $z$, y podemos sustutir en las dos restantes para encontrar $y$ y $z$

# How to: Dado un sistema linear de tres ecuaciones, resolver las tres incognitas
1. Agarrá cualquiera dos ecuaciones, y resolve para la misma variable
2. Agarrá otro par distinto de ecuaciones y resolve para la misma variable
3. Ahora creaste un sistema de ecuaciones con dos incognitas. Resolve el sistema dos-por-dos que te quedo
4. Sustituí las nuevas variables conocidas en cualquiera de las tres ecuaciones originales y resolve la incognita restante
