// --------------------------------------------------------------------------------
// 
// Oracle APEX source export file
// 
// The contents of this file are intended for review and analysis purposes only.
// Developers must use the Application Builder to make modifications to an
// application. Changes to this file will not be reflected in the application.
// 
// --------------------------------------------------------------------------------

// ----------------------------------------
// Page: 1 - Dashboard > JavaScript > Function and Global Variable Declaration

let waitSpinner;

// ----------------------------------------
// Page: 1 - Dashboard > Dynamic Action: Lazy loading refresh > Action: Execute JavaScript Code > Settings > Code

waitSpinner.remove();

// ----------------------------------------
// Page: 1 - Dashboard > Dynamic Action: Lazy loading refresh > Action: Waiting spinner > Settings > Code

waitSpinner = apex.widget.waitPopup();

// ----------------------------------------
// Page: 1 - Dashboard > Dynamic Action: Lazy loading refresh > Action: require js wait > Settings > Code

requirejs.config({ waitSeconds: 10 });

