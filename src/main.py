import requests 
import psycopg2

def fetch_data_from_api(api_url):
    """Fetch data from the given API URL."""
    response = requests.get(api_url)
    if response.status_code == 200:
        return response.json()
    else:
        raise Exception(f"Failed to fetch data: {response.status_code}")


if __name__ == "__main__":

    BASE_URL = "https://fakestoreapi.com"
    PRODUCTS = f"{BASE_URL}/products"
    CARTS = f"{BASE_URL}/carts"
    USERS = f"{BASE_URL}/users"


    # Fetch data from APIs
    products_data = fetch_data_from_api(PRODUCTS)
    carts_data = fetch_data_from_api(CARTS)
    users_data = fetch_data_from_api(USERS)

    print("Products Data:")
    print(products_data)