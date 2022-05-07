const report = require("multiple-cucumber-html-reporter");
report.generate({
jsonDir: "cypress/cucumber-json",  // ** Path of .json file **//
reportPath: "./reports/cucumber-htmlreport",
openReportInBrowser: true,
staticFilePath: true,
saveCollectedJSON: true,
disableLog: false,
pageTitle: "Coursedog",
reportName: "<h3><I>  Coursedog Cypress Assignment </I></h3>",
pageFooter: "<I> Coursedog Confidential </I>",
displayDuration: true,
durationInMS: true,
hideMetadata: false,
displayReportTime: true,
metadata: {
browser: {
name: "chrome",
version: "101",
},
device: "Local test machine",
platform: {
name: "Windows",
version: "11",
},
},
});