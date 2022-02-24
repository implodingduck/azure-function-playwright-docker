const { chromium } = require('playwright-chromium');

module.exports = async function (context, req) {
    context.log('JavaScript HTTP trigger function processed a request.');
    const myurl = process.env.MYURL || 'http://sslnginx/'
    const waituntil = process.env.WAITUNTIL || 'load'
    const browser = await chromium.launch();
    const page = await browser.newPage();
    
    await page.goto(myurl, { 'waitUntil': waituntil });
    const screenshot = await page.pdf({ fullPage: true });

    await browser.close();


    context.res = {
        headers: {
            "Content-Type": "application/pdf"
        },
        body: screenshot
    };
}