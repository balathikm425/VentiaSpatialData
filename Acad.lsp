(vl-load-com)
(setq CADver(atof (vlax-variant-value(vla-getvariable(vla-get-activedocument(vlax-get-acad-object))"acadver"))))
(setq Sup_Path (vlax-variant-value(vla-getvariable(vla-get-activedocument(vlax-get-acad-object))"dgnmappingpath")))
(setq UserName (vlax-variant-value(vla-getvariable(vla-get-activedocument(vlax-get-acad-object))"loginname")))
(cond
  	((= CADver 20.1)(setq HomeDLL "\\Spatial_Data_NET_2016\\Spatial_Data_NET_2016\\bin\\Debug"))
	((= CADver 21.0)(setq HomeDLL "\\Spatial_Data_NET_2017\\Spatial_Data_NET_2017\\bin\\Debug"))
	((= CADver 22.0)(setq HomeDLL "\\Spatial_Data_NET_2018\\Spatial_Data_NET_2018\\bin\\Debug"))
	((= CADver 23.0)(setq HomeDLL "\\Spatial_Data_NET_2019\\Spatial_Data_NET_2019\\bin\\Debug"))
	((= CADver 23.1)(setq HomeDLL "\\Spatial_Data_NET_2020\\Spatial_Data_NET_2020\\bin\\Debug"))
	((= CADver 24.0)(setq HomeDLL "\\Spatial_Data_NET_2021\\Spatial_Data_NET_2021\\bin\\Debug"))
	((= CADver 24.1)(setq HomeDLL "\\Spatial_Data_NET_2022\\Spatial_Data_NET_2022\\bin\\Debug"))
)
(setq HomePath (strcat "H:\\Ventia\\Ventia NET" HomeDLL))
(if(= UserName "BALA")
  (setq NetPath HomePath)
   (setq NetPath Sup_Path)
)
	(cond
	  	((= CADver 20.1)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2016.dll")));2016
		((= CADver 21.0)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2017.dll")));2017
		((= CADver 22.0)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2018.dll")));2018
		((= CADver 23.0)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2019.dll")));2019
		((= CADver 23.1)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2020.dll")));2020
		((= CADver 24.0)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2021.dll")));2021
		((= CADver 24.1)(vl-cmdf "netload" (strcat NetPath "\\Spatial_Data_NET_2022.dll")));2022
		(T (alert "Unknown version of AutoCAD detected."))
  	)
(princ"\nSPATIAL DAT PLUG_IN Loaded")
(princ)
;;;24.1s (LMS Tech)		AutoCAD 2022	TARGET FRAME 4.8
;;;24.0s (LMS Tech)		AutoCAD 2021	TARGET FRAME 4.8
;;;23.1s (LMS Tech)		AutoCAD 2020	TARGET FRAME 4.7
;;;23.0s (LMS Tech)		AutoCAD 2019	TARGET FRAME 4.7
;;;22.0s (LMS Tech)		AutoCAD 2018	TARGET FRAME 4.6
;;;21.0s (LMS Tech)		AutoCAD 2017	TARGET FRAME 4.6
;;;20.1s (LMS Tech)		AutoCAD 2016     TARGET FRAME 4.5
;;;20.0s (LMS Tech)		AutoCAD 2015
;;;19.1s (LMS Tech)		AutoCAD 2014
;;;19.0s (LMS Tech)		AutoCAD 2013
;;;18.2s (LMS Tech)		AutoCAD 2012
;;;18.1s (LMS Tech)		AutoCAD 2011
;;;18.0s (LMS Tech)		AutoCAD 2010
;;;17.2s (LMS Tech)		AutoCAD 2009
;;;17.1s (LMS Tech)		AutoCAD 2008
;;;17.0s (LMS Tech)		AutoCAD 2007
;;;16.2s (LMS Tech)		AutoCAD 2006
;;;16.1s (LMS Tech)		AutoCAD 2005
;;;16.0					AutoCAD 2004
;;;15.06					AutoCAD 2002
;;;15.05					AutoCAD 2000i
;;;15.0					AutoCAD 2000
;;;14.0					AutoCAD R14




