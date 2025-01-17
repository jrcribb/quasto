-- --------------------------------------------------------------------------------
-- 
-- Oracle APEX source export file
-- 
-- The contents of this file are intended for review and analysis purposes only.
-- Developers must use the Application Builder to make modifications to an
-- application. Changes to this file will not be reflected in the application.
-- 
-- --------------------------------------------------------------------------------

-- ----------------------------------------
-- Page: 1 - Dashboard > Dynamic Action: Lazy loading refresh > Action: Execute Server-side Code > Settings > PL/SQL Code

null;

-- ----------------------------------------
-- Page: 1 - Dashboard > Dynamic Action: Filter Regions > Action: Refresh collection > Settings > PL/SQL Code

qa_apex_app_pkg.p_fill_faceted_search_collection();


-- ----------------------------------------
-- Page: 1 - Dashboard > Dynamic Action: Lazy loading refresh > Action: Fill collection > Settings > PL/SQL Code

qa_apex_app_pkg.p_fill_faceted_search_collection();


-- ----------------------------------------
-- Page: 1 - Dashboard > Dynamic Action: Refresh Reports after Dialog closed (Breadcrumb) > Action: Refresh collection > Settings > PL/SQL Code

qa_apex_app_pkg.p_fill_faceted_search_collection();


