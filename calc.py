op = "i"
import csv
with open('resultados.csv', 'a', newline='') as file:

    while op !="e" :
        op = input ("Elija operación s=+, r=-, m=*, d=/, e=salir ")

        if op == "s":
            n1 = float(input ("Ingrese un número  "))
            n2 = float(input ("Ingrese otro núero  "))
            ans = n1+n2
            print(ans)
            writer = csv.writer(file)
            writer.writerow([op, n1, n2])
        elif op == "r":
            n1 = float(input ("Ingrese un número  "))
            n2 = float(input ("Ingrese otro núero  "))
            ans = n1-n2
            print(ans)
            writer = csv.writer(file)
            writer.writerow([op, n1, n2])
        elif op == "m":
            n1 = float(input ("Ingrese un número  "))
            n2 = float(input ("Ingrese otro núero  "))
            ans = n1*n2
            print(ans)
            writer = csv.writer(file)
            writer.writerow([op, n1, n2])
        elif op == "d":
            n1 = float(input ("Ingrese un número  "))
            n2 = float(input ("Ingrese otro núero  "))
            if n2 == 0:
                print ("Error, no se puede dividir entre cero")
            else:
                ans = n1/n2
                print(ans)
                writer = csv.writer(file)
                writer.writerow([op, n1, n2])
        elif op == "e":
            print("Gracias por usar el programa")


