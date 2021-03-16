i=1
sel="s"

 try
 while (sel != 1)
      nf = input("Ingrese un número  ")
      f = nf
      ac = 1
      if (nf >= 0 && nf <=100)
          while (nf >=1)
            ac = ac*nf
            nf = nf-1
          endwhile
       disp (ac)
       M = [f,ac]
        csvwrite ('C:\Users\maste\Documents\Octave\factoroct.csv', M , "-append") 
       elseif (nf>100)
          disp("Ingrese un número menor a 100")
       endif
  sel = input("Ingrese 1 para salir o cualquier otro número para continuar ")
 
 endwhile
  catch
    disp("Se ha detectado un error ")
  end_try_catch
