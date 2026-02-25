import asyncio
from playwright.async_api import async_playwright
import threading
import http.server
import socketserver
import os

PORT = 8082

def run_server():
    # Serve current directory
    os.chdir('.')
    Handler = http.server.SimpleHTTPRequestHandler
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print("serving at port", PORT)
        httpd.serve_forever()

async def main():
    server_thread = threading.Thread(target=run_server)
    server_thread.daemon = True
    server_thread.start()

    # Wait for server to start
    await asyncio.sleep(2)

    async with async_playwright() as p:
        browser = await p.chromium.launch()
        page = await browser.new_page()
        # Set viewport to ensure skip link is visible
        await page.set_viewport_size({"width": 1280, "height": 720})

        await page.goto(f'http://localhost:{PORT}/index.html')

        # Hide loading overlay
        overlay = page.locator('#loadingOverlay')
        if await overlay.is_visible():
            await page.evaluate("document.getElementById('loadingOverlay').style.display = 'none'")

        # 1. Focus Skip Link
        await page.keyboard.press('Tab')

        # Wait a bit for animation (0.3s)
        await asyncio.sleep(0.5)

        # Take screenshot of skip link
        await page.screenshot(path='verification/skip_link.png', clip={"x":0, "y":0, "width": 300, "height": 100})

        # 2. Focus Sidebar Toggle
        await page.keyboard.press('Tab')

        # Take screenshot of sidebar toggle
        await page.locator('.sidebar-header').screenshot(path='verification/sidebar_toggle.png')

        await browser.close()

if __name__ == '__main__':
    asyncio.run(main())
