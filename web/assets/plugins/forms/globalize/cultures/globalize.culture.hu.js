/*
 * Globalize Culture hu
 *
 * http://github.com/jquery/globalize
 *
 * Copyright Software Freedom Conservancy, Inc.
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 *
 * This file was generated by the Globalize Culture Generator
 * Translation: bugs found in this file need to be fixed in the generator
 */

(function (window, undefined) {

    var Globalize;

    if (typeof require !== "undefined" &&
        typeof exports !== "undefined" &&
        typeof module !== "undefined") {
        // Assume CommonJS
        Globalize = require("globalize");
    } else {
        // Global variable
        Globalize = window.Globalize;
    }

    Globalize.addCultureInfo("hu", "default", {
        name: "hu",
        englishName: "Hungarian",
        nativeName: "magyar",
        language: "hu",
        numberFormat: {
            ",": " ",
            ".": ",",
            "NaN": "nem szám",
            negativeInfinity: "negatív végtelen",
            positiveInfinity: "végtelen",
            percent: {
                ",": " ",
                ".": ","
            },
            currency: {
                pattern: ["-n $", "n $"],
                ",": " ",
                ".": ",",
                symbol: "Ft"
            }
        },
        calendars: {
            standard: {
                "/": ".",
                firstDay: 1,
                days: {
                    names: ["vasárnap", "hétfő", "kedd", "szerda", "csütörtök", "péntek", "szombat"],
                    namesAbbr: ["V", "H", "K", "Sze", "Cs", "P", "Szo"],
                    namesShort: ["V", "H", "K", "Sze", "Cs", "P", "Szo"]
                },
                months: {
                    names: ["január", "február", "március", "április", "május", "június", "július", "augusztus", "szeptember", "október", "november", "december", ""],
                    namesAbbr: ["jan.", "febr.", "márc.", "ápr.", "máj.", "jún.", "júl.", "aug.", "szept.", "okt.", "nov.", "dec.", ""]
                },
                AM: ["de.", "de.", "DE."],
                PM: ["du.", "du.", "DU."],
                eras: [{"name": "i.sz.", "start": null, "offset": 0}],
                patterns: {
                    d: "yyyy.MM.dd.",
                    D: "yyyy. MMMM d.",
                    t: "H:mm",
                    T: "H:mm:ss",
                    f: "yyyy. MMMM d. H:mm",
                    F: "yyyy. MMMM d. H:mm:ss",
                    M: "MMMM d.",
                    Y: "yyyy. MMMM"
                }
            }
        }
    });

}(this));
