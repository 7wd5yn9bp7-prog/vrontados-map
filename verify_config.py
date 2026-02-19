from playwright.sync_api import sync_playwright
import time
import os

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page()

        # Test 1: Missing config (or placeholder)
        print("Testing with missing config...")
        page.goto("http://localhost:8080")

        # Wait for the error message
        try:
            # Check for the specific error text
            page.wait_for_selector("text=Missing Configuration", timeout=5000)
            print("✅ Error message shown correctly.")
        except Exception as e:
            print(f"❌ Error message not shown: {e}")

        os.makedirs("verification", exist_ok=True)
        page.screenshot(path="verification/missing_config.png")

        # Test 2: Valid config
        print("Creating valid config.js...")
        with open("config.js", "w") as f:
            f.write("window.CONFIG = { GOOGLE_MAPS_API_KEY: 'TEST_KEY_123' };")

        print("Reloading page with valid config...")
        page.reload()

        # Check if the script is injected
        # We can check if the script tag with the key exists
        try:
            page.wait_for_selector('script[src*="key=TEST_KEY_123"]', state='attached', timeout=5000)
            print("✅ Google Maps script injected correctly.")
        except Exception as e:
            print(f"❌ Google Maps script not injected: {e}")

        # Wait a bit for potential rendering (though map won't load with fake key)
        time.sleep(2)
        page.screenshot(path="verification/valid_config.png")

        browser.close()

        # Clean up
        if os.path.exists("config.js"):
            os.remove("config.js")

if __name__ == "__main__":
    run()
