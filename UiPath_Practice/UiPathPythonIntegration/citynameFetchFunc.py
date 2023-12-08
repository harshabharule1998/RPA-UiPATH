import requests


def fetch(city):
    address = 'http://api.openweathermap.org/data/2.5/weather?appid=5d60afc9241d17441a81a5a2dd44ddb3&q='
    url = address + city
    data = requests.get(url).json()
    print(data)
    tempreture = data['main']['temp']
    description = data['weather'][0]['main']
    wind_speed = data['wind']['speed']
    humidity = data['main']['humidity']
    Weather_Tuple = (tempreture, humidity, wind_speed, description)
    Weather_Tuple = str(Weather_Tuple)
    print(type(Weather_Tuple))
    print(Weather_Tuple)
    return Weather_Tuple

fetch("Pune")

