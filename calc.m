pkg load database
conn = pq_connect(setdbopts("host", "localhost","dbname", "octatest","user", "proyectos", "password", "proyectos123"));

sel = "s";
op=1
while (sel !="e") 

  try
  sel = input ("elija operador s=+, r=-, m=*, d=/, e=terminar  ", 's')

    switch (sel)
      case "s"
        num1 = input ("ingrese un número  ")
        num2 = input ("ingrese otro número  ")
        res= (num1 + num2)
        disp ("El resultado es " ), disp (res)
        op=1
      case "r"
        num1 = input ("ingrese un número  ")
        num2 = input ("ingrese otro número  ")
        res= (num1 - num2)
        disp ("El resultado es " ), disp (res)
        op=2
      case "m"
        num1 = input ("ingrese un número  ")
        num2 = input ("ingrese otro número  ")
        res= (num1 * num2)
        disp ("El resultado es " ), disp (res)
        op=3
      case "d"
        num1 = input ("ingrese un número  ")
        num2 = input ("ingrese otro número  ")
        op=4      
          if (num2==0)
            disp ("error no se puede dividir entre cero")
          else
            res= (num1 / num2)
            disp ("El resultado es " ), disp (res)
          endif
      case "e"
        pg_close
        disp ("Gracias por utilizar el programa")
    endswitch
  catch
     disp ("Operador incorrecto. por favor intente de nuevo")
  end_try_catch 

M = [num1,num2,op,res]
y = num2cell ([num1,num2,op,res])
csvwrite ('C:\Users\maste\Documents\Octave\salida.csv', M , "-append")

pq_exec_params (conn, "INSERT INTO calc (num1,num2,op,res) VALUES ($1,$2,$3,$4);",y) 
 
 endwhile