import requests
import os


API_KEY = os.getenv("API_KEY")


def get_weather() -> None:
    url = f"http://api.weatherapi.com/v1/current.json?key={API_KEY}&q=Paris"
    request = requests.get(url)
    print(request.json())


if __name__ == "__main__":
    get_weather()
