import json
from recipe_scrapers import scrape_me

def lambda_handler(event, context):
    url = event['url']
    scraper = scrape_me(url, wild_mode=True)
    return scraper.json()
