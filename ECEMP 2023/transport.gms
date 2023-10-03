*-------------------------------------------------------------------------------
* Portions of the code in the AGRODEP GAMS training have been adapted from
* GAMS - A User's Guide (2014) by R.E. Rosenthal.
* The example is made smaller by G�rkem G�ng�r (2022) for graphical representation.
*-------------------------------------------------------------------------------

 Sets
 i canning plants
 /seattle    Seattle production site
  san-diego  San Diego plant/
 j markets
 /new-york/;

 Parameters
 a(i)   capacity of plant i in cases
 b(j)   demand at market j in cases
 c(i,j) transport cost in dollars per case
 ;

 TABLE DATA(*,*) Information available
               new-york     supply
 seattle            225     300
 san-diego          270     400
 demand             600      ;

 c(i,j)   = DATA(i,j);
 a(i)     = DATA(i,"supply");
 b(j)     = DATA("demand",j);

 VARIABLES
 x(i,j)   shipment quantities in cases
 z        total transportation costs;
* x.lo(i,j) = 0;

 EQUATIONS
 cost            define objective function
 supply(i)       supply limit at plant i
 demand(j)       satisfy demand at market j;

 cost..        z =e= sum((i,j), c(i,j)*x(i,j)) ;
 supply(i)..   sum[j,x(i,j)] =l= a(i) ;
 demand(j)..   sum{i,x(i,j)} =g= b(j) ;

MODEL transport example used in lesson 2 /all/;

SOLVE transport using lp minimizing z ;
