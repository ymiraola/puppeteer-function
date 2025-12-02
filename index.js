const functions = require('@google-cloud/functions-framework');
const chromium = require('@sparticuz/chromium');
const puppeteer = require('puppeteer-core');
const fs = require("fs");
const JSZip = require('jszip');

functions.http('generatePdfZip', async (req, res) => {
  res.status(200).send("Hello world!");
});