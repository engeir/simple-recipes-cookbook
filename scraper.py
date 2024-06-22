"""Simple scraper script for recipes."""

from recipe_scrapers import scrape_me
from icecream import ic

scraped = scrape_me(
    # "https://mere.eirik.re/hovedrett/char-siu-inspirert-kjottdeig/", wild_mode=True,
    "http://localhost:5000/hovedrett/kylling-teryaki-bowl/", wild_mode=True,
    # "https://www.hellofresh.no/recipes/char-siu-inspirert-kjottdeig-63ea00c81c9cdaabe476a6c2",
)

methods = {
    "canonical_url",
    "cooking_method",
    "dietary_restrictions",
    "equipment",
    "host",
    "image",
    "ingredient_groups",
    "ingredients",
    "instructions",
    "instructions_list",
    "keywords",
    # "links",  # just a big object of all links on the page
    "nutrients",
    "title",
    "to_json",
    "total_time",
    "yields",
    "ratings",
}


def print_info(method: str) -> None:
    """Prints the information from the scraper."""
    print()
    print(method)
    print()
    try:
        info = getattr(scraped, method)()
    except Exception as e:
        ic(e)
    else:
        ic(info)


for m in methods:
    print_info(m)
