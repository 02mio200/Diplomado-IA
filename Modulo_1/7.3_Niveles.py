
i = 1
invernaderos = []

    # Pedir datos de los 3 invernaderos
while i <= 3:
        print(f"Invernadero {i}:")
        temperatura = float(input("invernadero Temperatura (en grados Celsius): "))
        humedad = float(input("Humedad (%): "))
        invernaderos.append((temperatura, humedad))
        i += 1

    # Evaluar y recomendar acciones para cada invernadero
i = 1
for temperatura, humedad in invernaderos:
        print(f"\nRecomendaciones para Invernadero {i}:")
        if temperatura > 30 and humedad < 30:
            print("  - Ventilación")
        elif temperatura > 30 and humedad >= 30:
            print("  - Riego y ventilación")
        elif temperatura <= 30 and humedad < 30:
            print("  - Riego")
        else:
            print("  - No se recomienda ninguna acción")
        i += 1

