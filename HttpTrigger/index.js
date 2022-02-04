const { chromium } = require('playwright-chromium');

module.exports = async function (context, req) {
    context.log('JavaScript HTTP trigger function processed a request.');

    const browser = await chromium.launch();
    const page = await browser.newPage();
    await page.goto('https://sslnginx/');
    const screenshot = await page.screenshot({ fullPage: true });

    await browser.close();


    context.res = {
        headers: {
            "Content-Type": "image/png"
        },
        body: screenshot
    };
}