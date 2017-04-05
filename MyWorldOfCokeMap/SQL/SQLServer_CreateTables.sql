﻿create table CountryCodes (
	CountryName varchar(50),
	ISOAlpha2Code varchar(2),
	ISOAlpha3Code varchar(3),
	ISOM49Code varchar(3)
)

CREATE TABLE [dbo].[Coke](
	[CokeID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
	[IsBottle] [bit] NULL,
	[DateAquired] [smalldatetime] NULL,
	[Comments] [varchar](100) NULL,
	[CountryCode] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Code] PRIMARY KEY CLUSTERED 
(
	[CokeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

-- Insert into Coke table
-- No data given.  I did originally, but didn't save script.


-- This inserts country info.  
-- Source: http://www.nationsonline.org/oneworld/country_code_list.htm

insert into CountryCodes values ('Afghanistan','AF','AFG','4')
insert into CountryCodes values ('Aland Islands','AX','ALA','248')
insert into CountryCodes values ('Albania','AL','ALB','8')
insert into CountryCodes values ('Algeria','DZ','DZA','12')
insert into CountryCodes values ('American Samoa','AS','ASM','16')
insert into CountryCodes values ('Andorra','AD','AND','20')
insert into CountryCodes values ('Angola','AO','AGO','24')
insert into CountryCodes values ('Anguilla','AI','AIA','660')
insert into CountryCodes values ('Antarctica','AQ','ATA','10')
insert into CountryCodes values ('Antigua and Barbuda','AG','ATG','28')
insert into CountryCodes values ('Argentina','AR','ARG','32')
insert into CountryCodes values ('Armenia','AM','ARM','51')
insert into CountryCodes values ('Aruba','AW','ABW','533')
insert into CountryCodes values ('Australia','AU','AUS','36')
insert into CountryCodes values ('Austria','AT','AUT','40')
insert into CountryCodes values ('Azerbaijan','AZ','AZE','31')
insert into CountryCodes values ('Bahamas','BS','BHS','44')
insert into CountryCodes values ('Bahrain','BH','BHR','48')
insert into CountryCodes values ('Bangladesh','BD','BGD','50')
insert into CountryCodes values ('Barbados','BB','BRB','52')
insert into CountryCodes values ('Belarus','BY','BLR','112')
insert into CountryCodes values ('Belgium','BE','BEL','56')
insert into CountryCodes values ('Belize','BZ','BLZ','84')
insert into CountryCodes values ('Benin','BJ','BEN','204')
insert into CountryCodes values ('Bermuda','BM','BMU','60')
insert into CountryCodes values ('Bhutan','BT','BTN','64')
insert into CountryCodes values ('Bolivia','BO','BOL','68')
insert into CountryCodes values ('Bosnia and Herzegovina','BA','BIH','70')
insert into CountryCodes values ('Botswana','BW','BWA','72')
insert into CountryCodes values ('Bouvet Island','BV','BVT','74')
insert into CountryCodes values ('Brazil','BR','BRA','76')
insert into CountryCodes values ('British Virgin Islands','VG','VGB','92')
insert into CountryCodes values ('British Indian Ocean Territory','IO','IOT','86')
insert into CountryCodes values ('Brunei Darussalam','BN','BRN','96')
insert into CountryCodes values ('Bulgaria','BG','BGR','100')
insert into CountryCodes values ('Burkina Faso','BF','BFA','854')
insert into CountryCodes values ('Burundi','BI','BDI','108')
insert into CountryCodes values ('Cambodia','KH','KHM','116')
insert into CountryCodes values ('Cameroon','CM','CMR','120')
insert into CountryCodes values ('Canada','CA','CAN','124')
insert into CountryCodes values ('Cape Verde','CV','CPV','132')
insert into CountryCodes values ('Cayman Islands','KY','CYM','136')
insert into CountryCodes values ('Central African Republic','CF','CAF','140')
insert into CountryCodes values ('Chad','TD','TCD','148')
insert into CountryCodes values ('Chile','CL','CHL','152')
insert into CountryCodes values ('China','CN','CHN','156')
insert into CountryCodes values ('Hong Kong, SAR China','HK','HKG','344')
insert into CountryCodes values ('Macao, SAR China','MO','MAC','446')
insert into CountryCodes values ('Christmas Island','CX','CXR','162')
insert into CountryCodes values ('Cocos (Keeling) Islands','CC','CCK','166')
insert into CountryCodes values ('Colombia','CO','COL','170')
insert into CountryCodes values ('Comoros','KM','COM','174')
insert into CountryCodes values ('Congo (Brazzaville)','CG','COG','178')
insert into CountryCodes values ('Congo, (Kinshasa)','CD','COD','180')
insert into CountryCodes values ('Cook Islands','CK','COK','184')
insert into CountryCodes values ('Costa Rica','CR','CRI','188')
insert into CountryCodes values ('Côte d''Ivoire','CI','CIV','384')
insert into CountryCodes values ('Croatia','HR','HRV','191')
insert into CountryCodes values ('Cuba','CU','CUB','192')
insert into CountryCodes values ('Cyprus','CY','CYP','196')
insert into CountryCodes values ('Czech Republic','CZ','CZE','203')
insert into CountryCodes values ('Denmark','DK','DNK','208')
insert into CountryCodes values ('Djibouti','DJ','DJI','262')
insert into CountryCodes values ('Dominica','DM','DMA','212')
insert into CountryCodes values ('Dominican Republic','DO','DOM','214')
insert into CountryCodes values ('Ecuador','EC','ECU','218')
insert into CountryCodes values ('Egypt','EG','EGY','818')
insert into CountryCodes values ('El Salvador','SV','SLV','222')
insert into CountryCodes values ('Equatorial Guinea','GQ','GNQ','226')
insert into CountryCodes values ('Eritrea','ER','ERI','232')
insert into CountryCodes values ('Estonia','EE','EST','233')
insert into CountryCodes values ('Ethiopia','ET','ETH','231')
insert into CountryCodes values ('Falkland Islands (Malvinas)','FK','FLK','238')
insert into CountryCodes values ('Faroe Islands','FO','FRO','234')
insert into CountryCodes values ('Fiji','FJ','FJI','242')
insert into CountryCodes values ('Finland','FI','FIN','246')
insert into CountryCodes values ('France','FR','FRA','250')
insert into CountryCodes values ('French Guiana','GF','GUF','254')
insert into CountryCodes values ('French Polynesia','PF','PYF','258')
insert into CountryCodes values ('French Southern Territories','TF','ATF','260')
insert into CountryCodes values ('Gabon','GA','GAB','266')
insert into CountryCodes values ('Gambia','GM','GMB','270')
insert into CountryCodes values ('Georgia','GE','GEO','268')
insert into CountryCodes values ('Germany','DE','DEU','276')
insert into CountryCodes values ('Ghana','GH','GHA','288')
insert into CountryCodes values ('Gibraltar','GI','GIB','292')
insert into CountryCodes values ('Greece','GR','GRC','300')
insert into CountryCodes values ('Greenland','GL','GRL','304')
insert into CountryCodes values ('Grenada','GD','GRD','308')
insert into CountryCodes values ('Guadeloupe','GP','GLP','312')
insert into CountryCodes values ('Guam','GU','GUM','316')
insert into CountryCodes values ('Guatemala','GT','GTM','320')
insert into CountryCodes values ('Guernsey','GG','GGY','831')
insert into CountryCodes values ('Guinea','GN','GIN','324')
insert into CountryCodes values ('Guinea-Bissau','GW','GNB','624')
insert into CountryCodes values ('Guyana','GY','GUY','328')
insert into CountryCodes values ('Haiti','HT','HTI','332')
insert into CountryCodes values ('Heard and Mcdonald Islands','HM','HMD','334')
insert into CountryCodes values ('Holy See (Vatican City State)','VA','VAT','336')
insert into CountryCodes values ('Honduras','HN','HND','340')
insert into CountryCodes values ('Hungary','HU','HUN','348')
insert into CountryCodes values ('Iceland','IS','ISL','352')
insert into CountryCodes values ('India','IN','IND','356')
insert into CountryCodes values ('Indonesia','ID','IDN','360')
insert into CountryCodes values ('Iran, Islamic Republic of','IR','IRN','364')
insert into CountryCodes values ('Iraq','IQ','IRQ','368')
insert into CountryCodes values ('Ireland','IE','IRL','372')
insert into CountryCodes values ('Isle of Man','IM','IMN','833')
insert into CountryCodes values ('Israel','IL','ISR','376')
insert into CountryCodes values ('Italy','IT','ITA','380')
insert into CountryCodes values ('Jamaica','JM','JAM','388')
insert into CountryCodes values ('Japan','JP','JPN','392')
insert into CountryCodes values ('Jersey','JE','JEY','832')
insert into CountryCodes values ('Jordan','JO','JOR','400')
insert into CountryCodes values ('Kazakhstan','KZ','KAZ','398')
insert into CountryCodes values ('Kenya','KE','KEN','404')
insert into CountryCodes values ('Kiribati','KI','KIR','296')
insert into CountryCodes values ('Korea (North)','KP','PRK','408')
insert into CountryCodes values ('Korea (South)','KR','KOR','410')
insert into CountryCodes values ('Kuwait','KW','KWT','414')
insert into CountryCodes values ('Kyrgyzstan','KG','KGZ','417')
insert into CountryCodes values ('Lao PDR','LA','LAO','418')
insert into CountryCodes values ('Latvia','LV','LVA','428')
insert into CountryCodes values ('Lebanon','LB','LBN','422')
insert into CountryCodes values ('Lesotho','LS','LSO','426')
insert into CountryCodes values ('Liberia','LR','LBR','430')
insert into CountryCodes values ('Libya','LY','LBY','434')
insert into CountryCodes values ('Liechtenstein','LI','LIE','438')
insert into CountryCodes values ('Lithuania','LT','LTU','440')
insert into CountryCodes values ('Luxembourg','LU','LUX','442')
insert into CountryCodes values ('Macedonia, Republic of','MK','MKD','807')
insert into CountryCodes values ('Madagascar','MG','MDG','450')
insert into CountryCodes values ('Malawi','MW','MWI','454')
insert into CountryCodes values ('Malaysia','MY','MYS','458')
insert into CountryCodes values ('Maldives','MV','MDV','462')
insert into CountryCodes values ('Mali','ML','MLI','466')
insert into CountryCodes values ('Malta','MT','MLT','470')
insert into CountryCodes values ('Marshall Islands','MH','MHL','584')
insert into CountryCodes values ('Martinique','MQ','MTQ','474')
insert into CountryCodes values ('Mauritania','MR','MRT','478')
insert into CountryCodes values ('Mauritius','MU','MUS','480')
insert into CountryCodes values ('Mayotte','YT','MYT','175')
insert into CountryCodes values ('Mexico','MX','MEX','484')
insert into CountryCodes values ('Micronesia, Federated States of','FM','FSM','583')
insert into CountryCodes values ('Moldova','MD','MDA','498')
insert into CountryCodes values ('Monaco','MC','MCO','492')
insert into CountryCodes values ('Mongolia','MN','MNG','496')
insert into CountryCodes values ('Montenegro','ME','MNE','499')
insert into CountryCodes values ('Montserrat','MS','MSR','500')
insert into CountryCodes values ('Morocco','MA','MAR','504')
insert into CountryCodes values ('Mozambique','MZ','MOZ','508')
insert into CountryCodes values ('Myanmar','MM','MMR','104')
insert into CountryCodes values ('Namibia','NA','NAM','516')
insert into CountryCodes values ('Nauru','NR','NRU','520')
insert into CountryCodes values ('Nepal','NP','NPL','524')
insert into CountryCodes values ('Netherlands','NL','NLD','528')
insert into CountryCodes values ('Netherlands Antilles','AN','ANT','530')
insert into CountryCodes values ('New Caledonia','NC','NCL','540')
insert into CountryCodes values ('New Zealand','NZ','NZL','554')
insert into CountryCodes values ('Nicaragua','NI','NIC','558')
insert into CountryCodes values ('Niger','NE','NER','562')
insert into CountryCodes values ('Nigeria','NG','NGA','566')
insert into CountryCodes values ('Niue','NU','NIU','570')
insert into CountryCodes values ('Norfolk Island','NF','NFK','574')
insert into CountryCodes values ('Northern Mariana Islands','MP','MNP','580')
insert into CountryCodes values ('Norway','NO','NOR','578')
insert into CountryCodes values ('Oman','OM','OMN','512')
insert into CountryCodes values ('Pakistan','PK','PAK','586')
insert into CountryCodes values ('Palau','PW','PLW','585')
insert into CountryCodes values ('Palestinian Territory','PS','PSE','275')
insert into CountryCodes values ('Panama','PA','PAN','591')
insert into CountryCodes values ('Papua New Guinea','PG','PNG','598')
insert into CountryCodes values ('Paraguay','PY','PRY','600')
insert into CountryCodes values ('Peru','PE','PER','604')
insert into CountryCodes values ('Philippines','PH','PHL','608')
insert into CountryCodes values ('Pitcairn','PN','PCN','612')
insert into CountryCodes values ('Poland','PL','POL','616')
insert into CountryCodes values ('Portugal','PT','PRT','620')
insert into CountryCodes values ('Puerto Rico','PR','PRI','630')
insert into CountryCodes values ('Qatar','QA','QAT','634')
insert into CountryCodes values ('Réunion','RE','REU','638')
insert into CountryCodes values ('Romania','RO','ROU','642')
insert into CountryCodes values ('Russian Federation','RU','RUS','643')
insert into CountryCodes values ('Rwanda','RW','RWA','646')
insert into CountryCodes values ('Saint-Barthélemy','BL','BLM','652')
insert into CountryCodes values ('Saint Helena','SH','SHN','654')
insert into CountryCodes values ('Saint Kitts and Nevis','KN','KNA','659')
insert into CountryCodes values ('Saint Lucia','LC','LCA','662')
insert into CountryCodes values ('Saint-Martin (French part)','MF','MAF','663')
insert into CountryCodes values ('Saint Pierre and Miquelon','PM','SPM','666')
insert into CountryCodes values ('Saint Vincent and Grenadines','VC','VCT','670')
insert into CountryCodes values ('Samoa','WS','WSM','882')
insert into CountryCodes values ('San Marino','SM','SMR','674')
insert into CountryCodes values ('Sao Tome and Principe','ST','STP','678')
insert into CountryCodes values ('Saudi Arabia','SA','SAU','682')
insert into CountryCodes values ('Senegal','SN','SEN','686')
insert into CountryCodes values ('Serbia','RS','SRB','688')
insert into CountryCodes values ('Seychelles','SC','SYC','690')
insert into CountryCodes values ('Sierra Leone','SL','SLE','694')
insert into CountryCodes values ('Singapore','SG','SGP','702')
insert into CountryCodes values ('Slovakia','SK','SVK','703')
insert into CountryCodes values ('Slovenia','SI','SVN','705')
insert into CountryCodes values ('Solomon Islands','SB','SLB','90')
insert into CountryCodes values ('Somalia','SO','SOM','706')
insert into CountryCodes values ('South Africa','ZA','ZAF','710')
insert into CountryCodes values ('South Georgia and the South Sandwich Islands','GS','SGS','239')
insert into CountryCodes values ('South Sudan','SS','SSD','728')
insert into CountryCodes values ('Spain','ES','ESP','724')
insert into CountryCodes values ('Sri Lanka','LK','LKA','144')
insert into CountryCodes values ('Sudan','SD','SDN','736')
insert into CountryCodes values ('Suriname','SR','SUR','740')
insert into CountryCodes values ('Svalbard and Jan Mayen Islands','SJ','SJM','744')
insert into CountryCodes values ('Swaziland','SZ','SWZ','748')
insert into CountryCodes values ('Sweden','SE','SWE','752')
insert into CountryCodes values ('Switzerland','CH','CHE','756')
insert into CountryCodes values ('Syrian Arab Republic (Syria)','SY','SYR','760')
insert into CountryCodes values ('Taiwan, Republic of China','TW','TWN','158')
insert into CountryCodes values ('Tajikistan','TJ','TJK','762')
insert into CountryCodes values ('Tanzania, United Republic of','TZ','TZA','834')
insert into CountryCodes values ('Thailand','TH','THA','764')
insert into CountryCodes values ('Timor-Leste','TL','TLS','626')
insert into CountryCodes values ('Togo','TG','TGO','768')
insert into CountryCodes values ('Tokelau','TK','TKL','772')
insert into CountryCodes values ('Tonga','TO','TON','776')
insert into CountryCodes values ('Trinidad and Tobago','TT','TTO','780')
insert into CountryCodes values ('Tunisia','TN','TUN','788')
insert into CountryCodes values ('Turkey','TR','TUR','792')
insert into CountryCodes values ('Turkmenistan','TM','TKM','795')
insert into CountryCodes values ('Turks and Caicos Islands','TC','TCA','796')
insert into CountryCodes values ('Tuvalu','TV','TUV','798')
insert into CountryCodes values ('Uganda','UG','UGA','800')
insert into CountryCodes values ('Ukraine','UA','UKR','804')
insert into CountryCodes values ('United Arab Emirates','AE','ARE','784')
insert into CountryCodes values ('United Kingdom','GB','GBR','826')
insert into CountryCodes values ('United States of America','US','USA','840')
insert into CountryCodes values ('US Minor Outlying Islands','UM','UMI','581')
insert into CountryCodes values ('Uruguay','UY','URY','858')
insert into CountryCodes values ('Uzbekistan','UZ','UZB','860')
insert into CountryCodes values ('Vanuatu','VU','VUT','548')
insert into CountryCodes values ('Venezuela (Bolivarian Republic)','VE','VEN','862')
insert into CountryCodes values ('Viet Nam','VN','VNM','704')
insert into CountryCodes values ('Virgin Islands, US','VI','VIR','850')
insert into CountryCodes values ('Wallis and Futuna Islands','WF','WLF','876')
insert into CountryCodes values ('Western Sahara','EH','ESH','732')
insert into CountryCodes values ('Yemen','YE','YEM','887')
insert into CountryCodes values ('Zambia','ZM','ZMB','894')
insert into CountryCodes values ('Zimbabwe','ZW','ZWE','716')