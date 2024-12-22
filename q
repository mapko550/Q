def divider(a, b):
    if a < b:
        raise ValueError("a must be greater than or equal to b")
    if b > 100:
        raise IndexError("b must be less than or equal to 100")
    return a / b
data = {10: 2, 2: 5, "123": 4, 18: 0, 8: 4}
for key, value in data.items():
    try:
        key = int(key)  # Перетворення ключа на ціле число (для рядка "123")
        res = divider(key, value)
        result.append(res)
    except ZeroDivisionError:
        print(f"ZeroDivisionError: Division by zero for key={key}, value={value}")
    except ValueError as ve:
        print(f"ValueError: {ve} for key={key}, value={value}")
    except IndexError as ie:
        print(f"IndexError: {ie} for key={key}, value={value}")
    except Exception as e:
        print(f"Unexpected error: {e} for key={key}, value={value}")
print(result)
#Вроді парвильно
