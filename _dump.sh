#!/bin/bash
declare -a langs=("en_IE" "sq_AL" "ar_SA" "hy_AM" "az_AZ" "bn_BD" "bs_BA" "bg_BG" "ca_ES" "zh_CN" "zh_TW" "hr_HR" "cs_CZ" "da_DK" "nl_NL" "et_EE" "fi_FI" "fr_FR" "gl_ES" "de_DE" "el_GR" "he_IL" "hi_IN" "hu_HU" "id_ID" "it_IT" "ja_JP" "ko_KR" "lv_LV" "lt_LT" "ms_MY" "nb_NO" "or_IN" "fa_IR" "pl_PL" "pt_BR" "pt_PT" "ro_RO" "ru_RU" "sr_RS" "sk_SK" "sl_SI" "es_ES" "sv_SE" "th_TH" "tr_TR" "uk_UA" "vi_VN")

for i in "${langs[@]}"
do
  curl pi3?locale=$i | sed -e "s/'?locale='+this.options\[this\.selectedIndex\]\.value\">/this\.options\[this\.selectedIndex\]\.value+'\.html'\">/g" > $i.html
done
