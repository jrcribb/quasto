prompt --application/shared_components/user_interface/templates/region/image
begin
--   Manifest
--     REGION TEMPLATE: IMAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.5'
,p_default_workspace_id=>33657925800256602
,p_default_application_id=>141
,p_default_id_offset=>33662320935301187
,p_default_owner=>'QUASTO'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(50716047424675104)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(50716397980675104)
,p_plug_template_id=>wwv_flow_imp.id(50716047424675104)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(50716630939675104)
,p_plug_template_id=>wwv_flow_imp.id(50716047424675104)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/