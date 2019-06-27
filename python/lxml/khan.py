from lxml import html
import re
import requests


def get_energy_points(user):
    page = requests.get('https://www.khanacademy.org/profile/%s/' % user)
    tree = html.fromstring(page.content)
    text = tree.xpath('//script[contains(.,"prefersReducedMotion")]/text()')
    points = 'Not found'
    for t in text:
        m = re.search(r'points":(\d+),"prefersReducedMotion', t)
        if m:
            points = m.group(1)
    return points

print(get_energy_points('XSLTGod'))
