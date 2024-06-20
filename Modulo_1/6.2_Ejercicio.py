while True:
    try:
        edad = int(input("Ingrese la edad: "))

        if edad <= 13:
            print('Niño')
        elif edad < 18:
            print('Adolescente')
        elif edad < 65:
            print('Adulto')
        else:
            print('Adulto mayor')

    except ValueError:
        print('Dato incorrecto, por favor ingrese un número entero.')
