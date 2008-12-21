###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite time locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::Catalog;

use strict;
use warnings;
use utf8;

sub CLDRVersion { return "1\.6\.1" }

my @Locales;
sub Locales { return @Locales }

my %Aliases;
sub Aliases { return %Aliases }

@Locales = (
    {
      id               => "en",
      en_language      => "English",
      native_language  => "English",
    },
    {
      id               => "en_US",
      en_language      => "English",
      en_territory     => "United\ States",
      native_language  => "English",
      native_territory => "United\ States",
    },
    {
      id               => "en_US_POSIX",
      en_language      => "English",
      en_territory     => "United\ States",
      en_variant       => "Computer",
      native_language  => "English",
      native_territory => "United\ States",
      native_variant   => "Computer",
    },
    {
      id               => "ja",
      en_language      => "Japanese",
      native_language  => "日本語",
    },
    {
      id               => "ja_JP",
      en_language      => "Japanese",
      en_territory     => "Japan",
      native_language  => "日本語",
      native_territory => "日本",
    },
);

%Aliases = (
    C => "en_US_POSIX",
    POSIX => "en_US_POSIX",
    eng => "en",
    eng_US => "en_US",
    eng_US_POSIX => "en_US_POSIX",
    jpn => "ja",
    jpn_JP => "ja_JP",
);

1;

__END__

=head1 NAME

DateTime::Locale::Catalog - Provides a list of all valid locale names

=head1 SYNOPSIS

See DateTime::Locale for usage details.

=head1 DESCRIPTION

This module contains a list of all known locales.

=head1 LOCALES

Any method taking locale id or name arguments should use one of the
values listed below. Ids and names are case sensitive. The id starts
with the ISO639-1 language code, and may also include information
identifying any or all of territory, script, or variant.

Always select the closest matching locale - for example, French
Canadians would choose fr_CA over fr - and B<always> use locale ids in
preference to names; locale ids offer greater compatibility when using
localized third party modules.

The available locales are:

 Locale id           Locale name
 ==================================================
 aa                  Afar
 aa_DJ               Afar Djibouti
 aa_ER               Afar Eritrea
 aa_ER_SAAHO         Afar Eritrea Saho
 aa_ET               Afar Ethiopia
 af                  Afrikaans
 af_NA               Afrikaans Namibia
 af_ZA               Afrikaans South Africa
 ak                  Akan
 ak_GH               Akan Ghana
 am                  Amharic
 am_ET               Amharic Ethiopia
 ar                  Arabic
 ar_AE               Arabic United Arab Emirates
 ar_BH               Arabic Bahrain
 ar_DZ               Arabic Algeria
 ar_EG               Arabic Egypt
 ar_IQ               Arabic Iraq
 ar_JO               Arabic Jordan
 ar_KW               Arabic Kuwait
 ar_LB               Arabic Lebanon
 ar_LY               Arabic Libya
 ar_MA               Arabic Morocco
 ar_OM               Arabic Oman
 ar_QA               Arabic Qatar
 ar_SA               Arabic Saudi Arabia
 ar_SD               Arabic Sudan
 ar_SY               Arabic Syria
 ar_TN               Arabic Tunisia
 ar_YE               Arabic Yemen
 as                  Assamese
 as_IN               Assamese India
 az                  Azerbaijani
 az_AZ               Azerbaijani Azerbaijan
 az_Cyrl             Azerbaijani (Cyrillic)
 az_Cyrl_AZ          Azerbaijani Azerbaijan (Cyrillic)
 az_Latn             Azerbaijani (Latin)
 az_Latn_AZ          Azerbaijani Azerbaijan (Latin)
 be                  Belarusian
 be_BY               Belarusian Belarus
 bg                  Bulgarian
 bg_BG               Bulgarian Bulgaria
 bn                  Bengali
 bn_BD               Bengali Bangladesh
 bn_IN               Bengali India
 bs                  Bosnian
 bs_BA               Bosnian Bosnia and Herzegovina
 byn                 Blin
 byn_ER              Blin Eritrea
 ca                  Catalan
 ca_ES               Catalan Spain
 cch                 Atsam
 cch_NG              Atsam Nigeria
 cop                 Coptic
 cs                  Czech
 cs_CZ               Czech Czech Republic
 cy                  Welsh
 cy_GB               Welsh United Kingdom
 da                  Danish
 da_DK               Danish Denmark
 de                  German
 de_AT               German Austria
 de_BE               German Belgium
 de_CH               German Switzerland
 de_DE               German Germany
 de_LI               German Liechtenstein
 de_LU               German Luxembourg
 dv                  Divehi
 dv_MV               Divehi Maldives
 dz                  Dzongkha
 dz_BT               Dzongkha Bhutan
 ee                  Ewe
 ee_GH               Ewe Ghana
 ee_TG               Ewe Togo
 el                  Greek
 el_CY               Greek Cyprus
 el_GR               Greek Greece
 el_POLYTON          Greek
 en                  English
 en_AS               English American Samoa
 en_AU               English Australia
 en_BE               English Belgium
 en_BW               English Botswana
 en_BZ               English Belize
 en_CA               English Canada
 en_Dsrt             English (Deseret)
 en_Dsrt_US          English United States (Deseret)
 en_GB               English United Kingdom
 en_GU               English Guam
 en_HK               English Hong Kong SAR China
 en_IE               English Ireland
 en_IN               English India
 en_JM               English Jamaica
 en_MH               English Marshall Islands
 en_MP               English Northern Mariana Islands
 en_MT               English Malta
 en_NA               English Namibia
 en_NZ               English New Zealand
 en_PH               English Philippines
 en_PK               English Pakistan
 en_SG               English Singapore
 en_Shaw             English (Shavian)
 en_TT               English Trinidad and Tobago
 en_UM               English United States Minor Outlying Islands
 en_US               English United States
 en_US_POSIX         English United States Computer
 en_VI               English U.S. Virgin Islands
 en_ZA               English South Africa
 en_ZW               English Zimbabwe
 eo                  Esperanto
 es                  Spanish
 es_AR               Spanish Argentina
 es_BO               Spanish Bolivia
 es_CL               Spanish Chile
 es_CO               Spanish Colombia
 es_CR               Spanish Costa Rica
 es_DO               Spanish Dominican Republic
 es_EC               Spanish Ecuador
 es_ES               Spanish Spain
 es_GT               Spanish Guatemala
 es_HN               Spanish Honduras
 es_MX               Spanish Mexico
 es_NI               Spanish Nicaragua
 es_PA               Spanish Panama
 es_PE               Spanish Peru
 es_PR               Spanish Puerto Rico
 es_PY               Spanish Paraguay
 es_SV               Spanish El Salvador
 es_US               Spanish United States
 es_UY               Spanish Uruguay
 es_VE               Spanish Venezuela
 et                  Estonian
 et_EE               Estonian Estonia
 eu                  Basque
 eu_ES               Basque Spain
 fa                  Persian
 fa_AF               Persian Afghanistan
 fa_IR               Persian Iran
 fi                  Finnish
 fi_FI               Finnish Finland
 fil                 Filipino
 fil_PH              Filipino Philippines
 fo                  Faroese
 fo_FO               Faroese Faroe Islands
 fr                  French
 fr_BE               French Belgium
 fr_CA               French Canada
 fr_CH               French Switzerland
 fr_FR               French France
 fr_LU               French Luxembourg
 fr_MC               French Monaco
 fr_SN               French Senegal
 fur                 Friulian
 fur_IT              Friulian Italy
 ga                  Irish
 ga_IE               Irish Ireland
 gaa                 Ga
 gaa_GH              Ga Ghana
 gez                 Geez
 gez_ER              Geez Eritrea
 gez_ET              Geez Ethiopia
 gl                  Galician
 gl_ES               Galician Spain
 gu                  Gujarati
 gu_IN               Gujarati India
 gv                  Manx
 gv_GB               Manx United Kingdom
 ha                  Hausa
 ha_Arab             Hausa (Arabic)
 ha_Arab_NG          Hausa Nigeria (Arabic)
 ha_Arab_SD          Hausa Sudan (Arabic)
 ha_GH               Hausa Ghana
 ha_Latn             Hausa (Latin)
 ha_Latn_GH          Hausa Ghana (Latin)
 ha_Latn_NE          Hausa Niger (Latin)
 ha_Latn_NG          Hausa Nigeria (Latin)
 ha_NE               Hausa Niger
 ha_NG               Hausa Nigeria
 ha_SD               Hausa Sudan
 haw                 Hawaiian
 haw_US              Hawaiian United States
 he                  Hebrew
 he_IL               Hebrew Israel
 hi                  Hindi
 hi_IN               Hindi India
 hr                  Croatian
 hr_HR               Croatian Croatia
 hu                  Hungarian
 hu_HU               Hungarian Hungary
 hy                  Armenian
 hy_AM               Armenian Armenia
 hy_AM_REVISED       Armenian Armenia Revised Orthography
 ia                  Interlingua
 id                  Indonesian
 id_ID               Indonesian Indonesia
 ig                  Igbo
 ig_NG               Igbo Nigeria
 ii                  Sichuan Yi
 ii_CN               Sichuan Yi China
 is                  Icelandic
 is_IS               Icelandic Iceland
 it                  Italian
 it_CH               Italian Switzerland
 it_IT               Italian Italy
 iu                  Inuktitut
 ja                  Japanese
 ja_JP               Japanese Japan
 ka                  Georgian
 ka_GE               Georgian Georgia
 kaj                 Jju
 kaj_NG              Jju Nigeria
 kam                 Kamba
 kam_KE              Kamba Kenya
 kcg                 Tyap
 kcg_NG              Tyap Nigeria
 kfo                 Koro
 kfo_CI              Koro Ivory Coast
 kk                  Kazakh
 kk_Cyrl             Kazakh (Cyrillic)
 kk_Cyrl_KZ          Kazakh Kazakhstan (Cyrillic)
 kk_KZ               Kazakh Kazakhstan
 kl                  Kalaallisut
 kl_GL               Kalaallisut Greenland
 km                  Khmer
 km_KH               Khmer Cambodia
 kn                  Kannada
 kn_IN               Kannada India
 ko                  Korean
 ko_KR               Korean South Korea
 kok                 Konkani
 kok_IN              Konkani India
 kpe                 Kpelle
 kpe_GN              Kpelle Guinea
 kpe_LR              Kpelle Liberia
 ku                  Kurdish
 ku_Arab             Kurdish (Arabic)
 ku_Latn             Kurdish (Latin)
 ku_Latn_TR          Kurdish Turkey (Latin)
 ku_TR               Kurdish Turkey
 kw                  Cornish
 kw_GB               Cornish United Kingdom
 ky                  Kirghiz
 ky_KG               Kirghiz Kyrgyzstan
 ln                  Lingala
 ln_CD               Lingala Congo - Kinshasa
 ln_CG               Lingala Congo - Brazzaville
 lo                  Lao
 lo_LA               Lao Laos
 lt                  Lithuanian
 lt_LT               Lithuanian Lithuania
 lv                  Latvian
 lv_LV               Latvian Latvia
 mk                  Macedonian
 mk_MK               Macedonian Macedonia
 ml                  Malayalam
 ml_IN               Malayalam India
 mn                  Mongolian
 mn_CN               Mongolian China
 mn_Cyrl             Mongolian (Cyrillic)
 mn_Cyrl_MN          Mongolian Mongolia (Cyrillic)
 mn_MN               Mongolian Mongolia
 mn_Mong             Mongolian (Mongolian)
 mn_Mong_CN          Mongolian China (Mongolian)
 mo                  Moldavian
 mr                  Marathi
 mr_IN               Marathi India
 ms                  Malay
 ms_BN               Malay Brunei
 ms_MY               Malay Malaysia
 mt                  Maltese
 mt_MT               Maltese Malta
 my                  Burmese
 my_MM               Burmese Myanmar
 nb                  Norwegian Bokmål
 nb_NO               Norwegian Bokmål Norway
 ne                  Nepali
 ne_IN               Nepali India
 ne_NP               Nepali Nepal
 nl                  Dutch
 nl_BE               Dutch Belgium
 nl_NL               Dutch Netherlands
 nn                  Norwegian Nynorsk
 nn_NO               Norwegian Nynorsk Norway
 no                  Norwegian
 nr                  South Ndebele
 nr_ZA               South Ndebele South Africa
 nso                 Northern Sotho
 nso_ZA              Northern Sotho South Africa
 ny                  Nyanja
 ny_MW               Nyanja Malawi
 om                  Oromo
 om_ET               Oromo Ethiopia
 om_KE               Oromo Kenya
 or                  Oriya
 or_IN               Oriya India
 pa                  Punjabi
 pa_Arab             Punjabi (Arabic)
 pa_Arab_PK          Punjabi Pakistan (Arabic)
 pa_Guru             Punjabi (Gurmukhi)
 pa_Guru_IN          Punjabi India (Gurmukhi)
 pa_IN               Punjabi India
 pa_PK               Punjabi Pakistan
 pl                  Polish
 pl_PL               Polish Poland
 ps                  Pashto
 ps_AF               Pashto Afghanistan
 pt                  Portuguese
 pt_BR               Portuguese Brazil
 pt_PT               Portuguese Portugal
 ro                  Romanian
 ro_MD               Romanian Moldova
 ro_RO               Romanian Romania
 root                Root
 ru                  Russian
 ru_RU               Russian Russia
 ru_UA               Russian Ukraine
 rw                  Kinyarwanda
 rw_RW               Kinyarwanda Rwanda
 sa                  Sanskrit
 sa_IN               Sanskrit India
 se                  Northern Sami
 se_FI               Northern Sami Finland
 se_NO               Northern Sami Norway
 sh                  Serbo-Croatian
 sh_BA               Serbo-Croatian Bosnia and Herzegovina
 sh_CS               Serbo-Croatian Serbia and Montenegro
 sh_YU               Serbo-Croatian
 si                  Sinhala
 si_LK               Sinhala Sri Lanka
 sid                 Sidamo
 sid_ET              Sidamo Ethiopia
 sk                  Slovak
 sk_SK               Slovak Slovakia
 sl                  Slovenian
 sl_SI               Slovenian Slovenia
 so                  Somali
 so_DJ               Somali Djibouti
 so_ET               Somali Ethiopia
 so_KE               Somali Kenya
 so_SO               Somali Somalia
 sq                  Albanian
 sq_AL               Albanian Albania
 sr                  Serbian
 sr_BA               Serbian Bosnia and Herzegovina
 sr_CS               Serbian Serbia and Montenegro
 sr_Cyrl             Serbian (Cyrillic)
 sr_Cyrl_BA          Serbian Bosnia and Herzegovina (Cyrillic)
 sr_Cyrl_CS          Serbian Serbia and Montenegro (Cyrillic)
 sr_Cyrl_ME          Serbian Montenegro (Cyrillic)
 sr_Cyrl_RS          Serbian Serbia (Cyrillic)
 sr_Cyrl_YU          Serbian (Cyrillic)
 sr_Latn             Serbian (Latin)
 sr_Latn_BA          Serbian Bosnia and Herzegovina (Latin)
 sr_Latn_CS          Serbian Serbia and Montenegro (Latin)
 sr_Latn_ME          Serbian Montenegro (Latin)
 sr_Latn_RS          Serbian Serbia (Latin)
 sr_Latn_YU          Serbian (Latin)
 sr_ME               Serbian Montenegro
 sr_RS               Serbian Serbia
 sr_YU               Serbian
 ss                  Swati
 ss_SZ               Swati Swaziland
 ss_ZA               Swati South Africa
 st                  Southern Sotho
 st_LS               Southern Sotho Lesotho
 st_ZA               Southern Sotho South Africa
 sv                  Swedish
 sv_FI               Swedish Finland
 sv_SE               Swedish Sweden
 sw                  Swahili
 sw_KE               Swahili Kenya
 sw_TZ               Swahili Tanzania
 syr                 Syriac
 syr_SY              Syriac Syria
 ta                  Tamil
 ta_IN               Tamil India
 te                  Telugu
 te_IN               Telugu India
 tg                  Tajik
 tg_Cyrl             Tajik (Cyrillic)
 tg_Cyrl_TJ          Tajik Tajikistan (Cyrillic)
 tg_TJ               Tajik Tajikistan
 th                  Thai
 th_TH               Thai Thailand
 ti                  Tigrinya
 ti_ER               Tigrinya Eritrea
 ti_ET               Tigrinya Ethiopia
 tig                 Tigre
 tig_ER              Tigre Eritrea
 tl                  Tagalog
 tn                  Tswana
 tn_ZA               Tswana South Africa
 to                  Tonga
 to_TO               Tonga Tonga
 tr                  Turkish
 tr_TR               Turkish Turkey
 ts                  Tsonga
 ts_ZA               Tsonga South Africa
 tt                  Tatar
 tt_RU               Tatar Russia
 ug                  Uighur
 ug_Arab             Uighur (Arabic)
 ug_Arab_CN          Uighur China (Arabic)
 ug_CN               Uighur China
 uk                  Ukrainian
 uk_UA               Ukrainian Ukraine
 ur                  Urdu
 ur_IN               Urdu India
 ur_PK               Urdu Pakistan
 uz                  Uzbek
 uz_AF               Uzbek Afghanistan
 uz_Arab             Uzbek (Arabic)
 uz_Arab_AF          Uzbek Afghanistan (Arabic)
 uz_Cyrl             Uzbek (Cyrillic)
 uz_Cyrl_UZ          Uzbek Uzbekistan (Cyrillic)
 uz_Latn             Uzbek (Latin)
 uz_Latn_UZ          Uzbek Uzbekistan (Latin)
 uz_UZ               Uzbek Uzbekistan
 ve                  Venda
 ve_ZA               Venda South Africa
 vi                  Vietnamese
 vi_VN               Vietnamese Vietnam
 wal                 Walamo
 wal_ET              Walamo Ethiopia
 wo                  Wolof
 wo_Latn             Wolof (Latin)
 wo_Latn_SN          Wolof Senegal (Latin)
 wo_SN               Wolof Senegal
 xh                  Xhosa
 xh_ZA               Xhosa South Africa
 yo                  Yoruba
 yo_NG               Yoruba Nigeria
 zh                  Chinese
 zh_CN               Chinese China
 zh_HK               Chinese Hong Kong SAR China
 zh_Hans             Chinese (Simplified Han)
 zh_Hans_CN          Chinese China (Simplified Han)
 zh_Hans_HK          Chinese Hong Kong SAR China (Simplified Han)
 zh_Hans_MO          Chinese Macau SAR China (Simplified Han)
 zh_Hans_SG          Chinese Singapore (Simplified Han)
 zh_Hant             Chinese (Traditional Han)
 zh_Hant_HK          Chinese Hong Kong SAR China (Traditional Han)
 zh_Hant_MO          Chinese Macau SAR China (Traditional Han)
 zh_Hant_TW          Chinese Taiwan (Traditional Han)
 zh_MO               Chinese Macau SAR China
 zh_SG               Chinese Singapore
 zh_TW               Chinese Taiwan
 zu                  Zulu
 zu_ZA               Zulu South Africa


There are also many aliases available, mostly for three-letter
(ISO639-2) language codes, these are:

 Locale id           Is an alias for
 ==================================================
 C                   en_US_POSIX
 POSIX               en_US_POSIX
 aar                 aa
 aar_DJ              aa_DJ
 aar_ER              aa_ER
 aar_ER_SAAHO        aa_ER_SAAHO
 aar_ET              aa_ET
 afr                 af
 afr_NA              af_NA
 afr_ZA              af_ZA
 aka                 ak
 aka_GH              ak_GH
 alb                 sq
 alb_AL              sq_AL
 amh                 am
 amh_ET              am_ET
 ara                 ar
 ara_AE              ar_AE
 ara_BH              ar_BH
 ara_DZ              ar_DZ
 ara_EG              ar_EG
 ara_IQ              ar_IQ
 ara_JO              ar_JO
 ara_KW              ar_KW
 ara_LB              ar_LB
 ara_LY              ar_LY
 ara_MA              ar_MA
 ara_OM              ar_OM
 ara_QA              ar_QA
 ara_SA              ar_SA
 ara_SD              ar_SD
 ara_SY              ar_SY
 ara_TN              ar_TN
 ara_YE              ar_YE
 arm                 hy
 arm_AM              hy_AM
 arm_AM_REVISED      hy_AM_REVISED
 asm                 as
 asm_IN              as_IN
 aze                 az
 aze_AZ              az_AZ
 aze_AZ_Cyrl         az_Cyrl_AZ
 aze_AZ_Latn         az_Latn_AZ
 aze_Cyrl            az_Cyrl
 aze_Latn            az_Latn
 baq                 eu
 baq_ES              eu_ES
 bel                 be
 bel_BY              be_BY
 ben                 bn
 ben_BD              bn_BD
 ben_IN              bn_IN
 bos                 bs
 bos_BA              bs_BA
 bul                 bg
 bul_BG              bg_BG
 bur                 my
 bur_MM              my_MM
 cat                 ca
 cat_ES              ca_ES
 chi                 zh
 chi_CN              zh_CN
 chi_CN_Hans         zh_Hans_CN
 chi_HK              zh_HK
 chi_HK_Hans         zh_Hans_HK
 chi_HK_Hant         zh_Hant_HK
 chi_Hans            zh_Hans
 chi_Hant            zh_Hant
 chi_MO              zh_MO
 chi_MO_Hans         zh_Hans_MO
 chi_MO_Hant         zh_Hant_MO
 chi_SG              zh_SG
 chi_SG_Hans         zh_Hans_SG
 chi_TW              zh_TW
 chi_TW_Hant         zh_Hant_TW
 cor                 kw
 cor_GB              kw_GB
 cze                 cs
 cze_CZ              cs_CZ
 dan                 da
 dan_DK              da_DK
 div                 dv
 div_MV              dv_MV
 dut                 nl
 dut_BE              nl_BE
 dut_NL              nl_NL
 dzo                 dz
 dzo_BT              dz_BT
 eng                 en
 eng_AS              en_AS
 eng_AU              en_AU
 eng_BE              en_BE
 eng_BW              en_BW
 eng_BZ              en_BZ
 eng_CA              en_CA
 eng_Dsrt            en_Dsrt
 eng_GB              en_GB
 eng_GU              en_GU
 eng_HK              en_HK
 eng_IE              en_IE
 eng_IN              en_IN
 eng_JM              en_JM
 eng_MH              en_MH
 eng_MP              en_MP
 eng_MT              en_MT
 eng_NA              en_NA
 eng_NZ              en_NZ
 eng_PH              en_PH
 eng_PK              en_PK
 eng_SG              en_SG
 eng_Shaw            en_Shaw
 eng_TT              en_TT
 eng_UM              en_UM
 eng_US              en_US
 eng_US_Dsrt         en_Dsrt_US
 eng_US_POSIX        en_US_POSIX
 eng_VI              en_VI
 eng_ZA              en_ZA
 eng_ZW              en_ZW
 epo                 eo
 est                 et
 est_EE              et_EE
 ewe                 ee
 ewe_GH              ee_GH
 ewe_TG              ee_TG
 fao                 fo
 fao_FO              fo_FO
 fin                 fi
 fin_FI              fi_FI
 fre                 fr
 fre_BE              fr_BE
 fre_CA              fr_CA
 fre_CH              fr_CH
 fre_FR              fr_FR
 fre_LU              fr_LU
 fre_MC              fr_MC
 fre_SN              fr_SN
 geo                 ka
 geo_GE              ka_GE
 ger                 de
 ger_AT              de_AT
 ger_BE              de_BE
 ger_CH              de_CH
 ger_DE              de_DE
 ger_LI              de_LI
 ger_LU              de_LU
 gle                 ga
 gle_IE              ga_IE
 glg                 gl
 glg_ES              gl_ES
 glv                 gv
 glv_GB              gv_GB
 gre                 el
 gre_CY              el_CY
 gre_GR              el_GR
 gre_POLYTON         el_POLYTON
 guj                 gu
 guj_IN              gu_IN
 hau                 ha
 hau_Arab            ha_Arab
 hau_GH              ha_GH
 hau_GH_Latn         ha_Latn_GH
 hau_Latn            ha_Latn
 hau_NE              ha_NE
 hau_NE_Latn         ha_Latn_NE
 hau_NG              ha_NG
 hau_NG_Arab         ha_Arab_NG
 hau_NG_Latn         ha_Latn_NG
 hau_SD              ha_SD
 hau_SD_Arab         ha_Arab_SD
 heb                 he
 heb_IL              he_IL
 hin                 hi
 hin_IN              hi_IN
 hrv                 hr
 hrv_HR              hr_HR
 hun                 hu
 hun_HU              hu_HU
 ibo                 ig
 ibo_NG              ig_NG
 ice                 is
 ice_IS              is_IS
 iii                 ii
 iii_CN              ii_CN
 iku                 iu
 ina                 ia
 ind                 id
 ind_ID              id_ID
 ita                 it
 ita_CH              it_CH
 ita_IT              it_IT
 iw                  he
 iw_IL               he_IL
 jpn                 ja
 jpn_JP              ja_JP
 kal                 kl
 kal_GL              kl_GL
 kan                 kn
 kan_IN              kn_IN
 kaz                 kk
 kaz_Cyrl            kk_Cyrl
 kaz_KZ              kk_KZ
 kaz_KZ_Cyrl         kk_Cyrl_KZ
 khm                 km
 khm_KH              km_KH
 kin                 rw
 kin_RW              rw_RW
 kir                 ky
 kir_KG              ky_KG
 kor                 ko
 kor_KR              ko_KR
 kur                 ku
 kur_Arab            ku_Arab
 kur_Latn            ku_Latn
 kur_TR              ku_TR
 kur_TR_Latn         ku_Latn_TR
 lao                 lo
 lao_LA              lo_LA
 lav                 lv
 lav_LV              lv_LV
 lin                 ln
 lin_CD              ln_CD
 lin_CG              ln_CG
 lit                 lt
 lit_LT              lt_LT
 mac                 mk
 mac_MK              mk_MK
 mal                 ml
 mal_IN              ml_IN
 mar                 mr
 mar_IN              mr_IN
 may                 ms
 may_BN              ms_BN
 may_MY              ms_MY
 mlt                 mt
 mlt_MT              mt_MT
 mol                 mo
 mon                 mn
 mon_CN              mn_CN
 mon_CN_Mong         mn_Mong_CN
 mon_Cyrl            mn_Cyrl
 mon_MN              mn_MN
 mon_MN_Cyrl         mn_Cyrl_MN
 mon_Mong            mn_Mong
 nbl                 nr
 nbl_ZA              nr_ZA
 nep                 ne
 nep_IN              ne_IN
 nep_NP              ne_NP
 nno                 nn
 nno_NO              nn_NO
 no                  nn
 no_NO               nn_NO
 no_NO_NY            nn_NO
 nob                 nb
 nob_NO              nb_NO
 nor                 no
 nya                 ny
 nya_MW              ny_MW
 ori                 or
 ori_IN              or_IN
 orm                 om
 orm_ET              om_ET
 orm_KE              om_KE
 pan                 pa
 pan_Arab            pa_Arab
 pan_Guru            pa_Guru
 pan_IN              pa_IN
 pan_IN_Guru         pa_Guru_IN
 pan_PK              pa_PK
 pan_PK_Arab         pa_Arab_PK
 per                 fa
 per_AF              fa_AF
 per_IR              fa_IR
 pol                 pl
 pol_PL              pl_PL
 por                 pt
 por_BR              pt_BR
 por_PT              pt_PT
 pus                 ps
 pus_AF              ps_AF
 rum                 ro
 rum_MD              ro_MD
 rum_RO              ro_RO
 rus                 ru
 rus_RU              ru_RU
 rus_UA              ru_UA
 san                 sa
 san_IN              sa_IN
 sin                 si
 sin_LK              si_LK
 slo                 sk
 slo_SK              sk_SK
 slv                 sl
 slv_SI              sl_SI
 sme                 se
 sme_FI              se_FI
 sme_NO              se_NO
 som                 so
 som_DJ              so_DJ
 som_ET              so_ET
 som_KE              so_KE
 som_SO              so_SO
 sot                 st
 sot_LS              st_LS
 sot_ZA              st_ZA
 spa                 es
 spa_AR              es_AR
 spa_BO              es_BO
 spa_CL              es_CL
 spa_CO              es_CO
 spa_CR              es_CR
 spa_DO              es_DO
 spa_EC              es_EC
 spa_ES              es_ES
 spa_GT              es_GT
 spa_HN              es_HN
 spa_MX              es_MX
 spa_NI              es_NI
 spa_PA              es_PA
 spa_PE              es_PE
 spa_PR              es_PR
 spa_PY              es_PY
 spa_SV              es_SV
 spa_US              es_US
 spa_UY              es_UY
 spa_VE              es_VE
 srp                 sr
 srp_BA              sr_BA
 srp_BA_Cyrl         sr_Cyrl_BA
 srp_BA_Latn         sr_Latn_BA
 srp_CS              sr_CS
 srp_CS_Cyrl         sr_Cyrl_CS
 srp_CS_Latn         sr_Latn_CS
 srp_Cyrl            sr_Cyrl
 srp_Latn            sr_Latn
 srp_ME              sr_ME
 srp_ME_Cyrl         sr_Cyrl_ME
 srp_ME_Latn         sr_Latn_ME
 srp_RS              sr_RS
 srp_RS_Cyrl         sr_Cyrl_RS
 srp_RS_Latn         sr_Latn_RS
 srp_YU              sr_YU
 srp_YU_Cyrl         sr_Cyrl_YU
 srp_YU_Latn         sr_Latn_YU
 ssw                 ss
 ssw_SZ              ss_SZ
 ssw_ZA              ss_ZA
 swa                 sw
 swa_KE              sw_KE
 swa_TZ              sw_TZ
 swe                 sv
 swe_FI              sv_FI
 swe_SE              sv_SE
 tam                 ta
 tam_IN              ta_IN
 tat                 tt
 tat_RU              tt_RU
 tel                 te
 tel_IN              te_IN
 tgk                 tg
 tgk_Cyrl            tg_Cyrl
 tgk_TJ              tg_TJ
 tgk_TJ_Cyrl         tg_Cyrl_TJ
 tgl                 tl
 tha                 th
 tha_TH              th_TH
 tir                 ti
 tir_ER              ti_ER
 tir_ET              ti_ET
 ton                 to
 ton_TO              to_TO
 tsn                 tn
 tsn_ZA              tn_ZA
 tso                 ts
 tso_ZA              ts_ZA
 tur                 tr
 tur_TR              tr_TR
 uig                 ug
 uig_Arab            ug_Arab
 uig_CN              ug_CN
 uig_CN_Arab         ug_Arab_CN
 ukr                 uk
 ukr_UA              uk_UA
 urd                 ur
 urd_IN              ur_IN
 urd_PK              ur_PK
 uzb                 uz
 uzb_AF              uz_AF
 uzb_AF_Arab         uz_Arab_AF
 uzb_Arab            uz_Arab
 uzb_Cyrl            uz_Cyrl
 uzb_Latn            uz_Latn
 uzb_UZ              uz_UZ
 uzb_UZ_Cyrl         uz_Cyrl_UZ
 uzb_UZ_Latn         uz_Latn_UZ
 ven                 ve
 ven_ZA              ve_ZA
 vie                 vi
 vie_VN              vi_VN
 wel                 cy
 wel_GB              cy_GB
 wol                 wo
 wol_Latn            wo_Latn
 wol_SN              wo_SN
 wol_SN_Latn         wo_Latn_SN
 xho                 xh
 xho_ZA              xh_ZA
 yor                 yo
 yor_NG              yo_NG
 zul                 zu
 zul_ZA              zu_ZA


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
