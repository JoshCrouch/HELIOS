(kicad_sch
	(version 20250114)
	(generator "eeschema")
	(generator_version "9.0")
	(uuid "66a23827-23a5-448f-8952-fd4fbae780a4")
	(paper "A3")
	(title_block
		(title "Hauptplatine")
		(date "16.07.2020")
		(rev "0")
		(comment 1 "Hel")
		(comment 3 "Signalgenerator")
	)
	(lib_symbols
		(symbol "Connector:Barrel_Jack_Switch"
			(pin_names
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 5.334 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Barrel_Jack_Switch"
				(at 0 -5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 1.27 -1.016 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 1.27 -1.016 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "DC Barrel Jack with an internal switch"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "DC power barrel jack connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "BarrelJack*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Barrel_Jack_Switch_0_1"
				(rectangle
					(start -5.08 3.81)
					(end 5.08 -3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(polyline
					(pts
						(xy -3.81 -2.54) (xy -2.54 -2.54) (xy -1.27 -1.27) (xy 0 -2.54) (xy 2.54 -2.54) (xy 5.08 -2.54)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -3.302 1.905)
					(mid -3.9343 2.54)
					(end -3.302 3.175)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -3.302 1.905)
					(mid -3.9343 2.54)
					(end -3.302 3.175)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 1.27 -2.286) (xy 1.905 -1.651)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 3.683 3.175)
					(end -3.302 1.905)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 5.08 2.54) (xy 3.81 2.54)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 5.08 0) (xy 1.27 0) (xy 1.27 -2.286) (xy 0.635 -1.651)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "Barrel_Jack_Switch_1_1"
				(pin passive line
					(at 7.62 2.54 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 7.62 0 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 7.62 -2.54 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Connector:Conn_Coaxial"
			(pin_names
				(offset 1.016)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0.254 3.048 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Conn_Coaxial"
				(at 2.921 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "coaxial connector (BNC, SMA, SMB, SMC, Cinch/RCA, LEMO, ...)"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "BNC SMA SMB SMC LEMO coaxial connector CINCH RCA MCX MMCX U.FL UMRF"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "*BNC* *SMA* *SMB* *SMC* *Cinch* *LEMO* *UMRF* *MCX* *U.FL*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Conn_Coaxial_0_1"
				(polyline
					(pts
						(xy -2.54 0) (xy -0.508 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start 1.778 0)
					(mid 0.222 -1.8079)
					(end -1.778 -0.508)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -1.778 0.508)
					(mid 0.2221 1.8084)
					(end 1.778 0)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 0 0)
					(radius 0.508)
					(stroke
						(width 0.2032)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 -2.54) (xy 0 -1.778)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "Conn_Coaxial_1_1"
				(pin passive line
					(at -5.08 0 0)
					(length 2.54)
					(name "In"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -5.08 90)
					(length 2.54)
					(name "Ext"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Connector:USB_A"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at -5.08 11.43 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "USB_A"
				(at -5.08 8.89 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 3.81 -1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 3.81 -1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "USB Type A connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "connector USB"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "USB*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "USB_A_0_1"
				(rectangle
					(start -5.08 -7.62)
					(end 5.08 7.62)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(circle
					(center -3.81 2.159)
					(radius 0.635)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -3.175 2.159) (xy -2.54 2.159) (xy -1.27 3.429) (xy -0.635 3.429)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.54 2.159) (xy -1.905 2.159) (xy -1.27 0.889) (xy 0 0.889)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.524 4.826)
					(end -4.318 5.334)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start -1.27 4.572)
					(end -4.572 5.842)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center -0.635 3.429)
					(radius 0.381)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start -0.127 -7.62)
					(end 0.127 -6.858)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 0.254 1.27)
					(end -0.508 0.508)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 0.635 2.794) (xy 0.635 1.524) (xy 1.905 2.159) (xy 0.635 2.794)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start 5.08 4.953)
					(end 4.318 5.207)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 5.08 -0.127)
					(end 4.318 0.127)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 5.08 -2.667)
					(end 4.318 -2.413)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "USB_A_1_1"
				(polyline
					(pts
						(xy -1.905 2.159) (xy 0.635 2.159)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at -2.54 -10.16 90)
					(length 2.54)
					(name "Shield"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at 0 -10.16 90)
					(length 2.54)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at 7.62 5.08 180)
					(length 2.54)
					(name "VBUS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 7.62 0 180)
					(length 2.54)
					(name "D+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 7.62 -2.54 180)
					(length 2.54)
					(name "D-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Connector_Generic:Conn_01x06"
			(pin_names
				(offset 1.016)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 7.62 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Conn_01x06"
				(at 0 -10.16 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Generic connector, single row, 01x06, script generated (kicad-library-utils/schlib/autogen/connector/)"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "Connector*:*_1x??_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Conn_01x06_1_1"
				(rectangle
					(start -1.27 6.35)
					(end 1.27 -8.89)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(rectangle
					(start -1.27 5.207)
					(end 0 4.953)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 2.667)
					(end 0 2.413)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 0.127)
					(end 0 -0.127)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 -2.413)
					(end 0 -2.667)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 -4.953)
					(end 0 -5.207)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 -7.493)
					(end 0 -7.747)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at -5.08 5.08 0)
					(length 3.81)
					(name "Pin_1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 2.54 0)
					(length 3.81)
					(name "Pin_2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 0 0)
					(length 3.81)
					(name "Pin_3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -2.54 0)
					(length 3.81)
					(name "Pin_4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -5.08 0)
					(length 3.81)
					(name "Pin_5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -7.62 0)
					(length 3.81)
					(name "Pin_6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Device:C"
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0.254)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "C"
				(at 0.635 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "C"
				(at 0.635 -2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0.9652 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Unpolarized capacitor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "cap capacitor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "C_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "C_0_1"
				(polyline
					(pts
						(xy -2.032 0.762) (xy 2.032 0.762)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.032 -0.762) (xy 2.032 -0.762)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "C_1_1"
				(pin passive line
					(at 0 3.81 270)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -3.81 90)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Device:CP"
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0.254)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "C"
				(at 0.635 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "Device_CP"
				(at 0.635 -2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0.9652 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "CP_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "CP_0_1"
				(rectangle
					(start -2.286 0.508)
					(end 2.286 1.016)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.778 2.286) (xy -0.762 2.286)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.27 2.794) (xy -1.27 1.778)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 2.286 -0.508)
					(end -2.286 -1.016)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "CP_1_1"
				(pin passive line
					(at 0 3.81 270)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -3.81 90)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Device:LED_Dual_ACA"
			(pin_names
				(offset 0)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "D"
				(at 0 5.715 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Device_LED_Dual_ACA"
				(at 0 -6.35 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "LED* LED_SMD:* LED_THT:*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "LED_Dual_ACA_0_1"
				(polyline
					(pts
						(xy -4.572 0) (xy -2.54 0)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center -2.54 0)
					(radius 0.2794)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -1.27 1.27) (xy -1.27 3.81)
					)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.27 -1.27) (xy -1.27 -3.81)
					)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 0 0)
					(radius 4.572)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type background)
					)
				)
				(polyline
					(pts
						(xy 1.27 1.27) (xy 1.27 3.81) (xy -1.27 2.54) (xy 1.27 1.27)
					)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 1.27 -3.81) (xy 1.27 -1.27) (xy -1.27 -2.54) (xy 1.27 -3.81)
					)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.032 5.08) (xy 3.556 6.604) (xy 2.794 6.604) (xy 3.556 6.604) (xy 3.556 5.842)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.032 2.54) (xy -2.54 2.54) (xy -2.54 -2.54) (xy 2.032 -2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.302 4.064) (xy 4.826 5.588) (xy 4.064 5.588) (xy 4.826 5.588) (xy 4.826 4.826)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.81 2.54) (xy 1.905 2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.81 -2.54) (xy 1.905 -2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "LED_Dual_ACA_1_1"
				(pin input line
					(at -7.62 0 0)
					(length 3.048)
					(name "K"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 7.62 2.54 180)
					(length 3.81)
					(name "A1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 7.62 -2.54 180)
					(length 3.81)
					(name "A2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Device:R"
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "R"
				(at 2.032 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "R"
				(at 0 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at -1.778 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Resistor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "R res resistor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "R_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "R_0_1"
				(rectangle
					(start -1.016 -2.54)
					(end 1.016 2.54)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "R_1_1"
				(pin passive line
					(at 0 3.81 270)
					(length 1.27)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -3.81 90)
					(length 1.27)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "mario_aux:GND"
			(power)
			(pin_names
				(offset 0)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#GND"
				(at 0 -4.318 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "mario_aux_GND"
				(at 0 -2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 -1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 -1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "GND_0_1"
				(polyline
					(pts
						(xy 0 -1.27) (xy 0 0)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 1.016 -1.27) (xy -1.016 -1.27)
					)
					(stroke
						(width 0.2032)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "GND_1_1"
				(pin power_in line
					(at 0 0 90)
					(length 0)
					(hide yes)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "power:+3.3V"
			(power)
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#PWR"
				(at 0 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "+3.3V"
				(at 0 3.556 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Power symbol creates a global label with name \"+3.3V\""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "global power"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "+3.3V_0_1"
				(polyline
					(pts
						(xy -0.762 1.27) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 2.54) (xy 0.762 1.27)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 0) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "+3.3V_1_1"
				(pin power_in line
					(at 0 0 90)
					(length 0)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "power:PWR_FLAG"
			(power)
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#FLG"
				(at 0 1.905 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "PWR_FLAG"
				(at 0 3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Special symbol for telling ERC where power comes from"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "flag power"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "PWR_FLAG_0_0"
				(pin power_out line
					(at 0 0 90)
					(length 0)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(symbol "PWR_FLAG_0_1"
				(polyline
					(pts
						(xy 0 0) (xy 0 1.27) (xy -1.016 1.905) (xy 0 2.54) (xy 1.016 1.905) (xy 0 1.27)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(embedded_fonts no)
		)
	)
	(text "Supply"
		(exclude_from_sim no)
		(at 40.64 228.6 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "0584eda2-6ab7-4a82-b604-2cc2d51a4862")
	)
	(text "USB \nInterface"
		(exclude_from_sim no)
		(at 40.64 165.1 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "363a66ae-d4ee-4c24-a133-58fe2b715bb9")
	)
	(text "RF\nout"
		(exclude_from_sim no)
		(at 373.38 50.8 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "4e0aea11-940c-4c83-94e3-1b7a9d6e8f1c")
	)
	(text "Power On / Status\n(Front Panel)"
		(exclude_from_sim no)
		(at 156.21 203.2 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "78112402-4764-4d78-8839-31246a0dd16f")
	)
	(text "Ext. Ref.\nin"
		(exclude_from_sim no)
		(at 40.64 50.8 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "9265da78-0e5e-4301-a176-81f7c65f11a5")
	)
	(text "ISP \nConnector"
		(exclude_from_sim no)
		(at 40.64 115.57 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "a1db2567-9465-4732-8e6d-df631d696bbb")
	)
	(junction
		(at 151.13 91.44)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "16fb8395-83b5-4931-9a79-aa969993237b")
	)
	(junction
		(at 209.55 91.44)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "1b7143f4-856e-4bc6-bac3-8289758f0168")
	)
	(junction
		(at 71.12 125.73)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "3ba22cfa-4a93-4ff1-b975-501a0f977734")
	)
	(junction
		(at 71.12 115.57)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "458a3198-10d3-4f7a-8112-fa53d27db1c7")
	)
	(junction
		(at 83.82 226.06)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "4b535c66-8088-43d2-8865-ccb1382f4227")
	)
	(junction
		(at 60.96 175.26)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "617dad1f-da4f-4ca9-9662-fb928b535c49")
	)
	(junction
		(at 139.7 91.44)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "633a73fc-7d41-45d0-98f8-908064eeed0a")
	)
	(junction
		(at 280.67 91.44)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "851c4553-a0dc-41d8-8d70-e31147723326")
	)
	(junction
		(at 76.2 231.14)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "8c8c864a-9694-4689-a3e5-4f9c6b339da1")
	)
	(junction
		(at 76.2 228.6)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "ea7f37fc-33cc-4165-a2db-8c4830cd1e5f")
	)
	(no_connect
		(at 66.04 123.19)
		(uuid "09027085-b132-486a-a2b1-3e2dd2c42aea")
	)
	(no_connect
		(at 66.04 120.65)
		(uuid "9026804e-31e5-47b2-bea0-c439110bf34d")
	)
	(no_connect
		(at 66.04 118.11)
		(uuid "9b6826a5-100a-4ac3-aa5b-b898ebf73b5b")
	)
	(bus_entry
		(at 283.21 69.85)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "06611db5-5c21-4faa-b800-48f05c4b1320")
	)
	(bus_entry
		(at 146.05 173.99)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0a6d004a-c60e-4e0f-b209-b026e14919c5")
	)
	(bus_entry
		(at 146.05 152.4)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0d26445a-82a7-48d2-bdc6-bcf9d742cf54")
	)
	(bus_entry
		(at 72.39 82.55)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0f0036ab-b9c3-4be9-9994-f37409843c75")
	)
	(bus_entry
		(at 214.63 72.39)
		(size -2.54 2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0fad9623-bace-4758-9241-6ba0ce322e37")
	)
	(bus_entry
		(at 283.21 72.39)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1aa92c27-c1f4-43cf-8937-5d5c2c9c59b4")
	)
	(bus_entry
		(at 72.39 74.93)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "23932a81-9f51-4a6e-a1e4-278dfd7db7e0")
	)
	(bus_entry
		(at 72.39 69.85)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "257936a0-b695-4e55-8361-3ef36cd5c41f")
	)
	(bus_entry
		(at 142.24 72.39)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2978bbee-d2bf-44a8-aa95-4220d6a409c9")
	)
	(bus_entry
		(at 347.98 74.93)
		(size 2.54 2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "38e73eb7-b849-478d-be3e-921dfa24229c")
	)
	(bus_entry
		(at 142.24 67.31)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "450b1708-41d1-4b3d-9ba2-5d45beb691ce")
	)
	(bus_entry
		(at 142.24 82.55)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "46b35343-3980-402a-8066-ca830ac0f70a")
	)
	(bus_entry
		(at 283.21 74.93)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4a7148a8-ebb5-42c3-84e3-a16a394888d4")
	)
	(bus_entry
		(at 146.05 128.27)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "511abae4-f133-4d61-8cac-0a0baf73e37f")
	)
	(bus_entry
		(at 146.05 163.83)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "58bc760d-99a5-4d70-a868-7d77c3ab463b")
	)
	(bus_entry
		(at 146.05 166.37)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5e6666f9-e4f4-45bb-b30b-9d3f03066dfe")
	)
	(bus_entry
		(at 146.05 176.53)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "62ff6ee9-7027-49cd-845b-b5755b3b02c4")
	)
	(bus_entry
		(at 146.05 158.75)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "75fd4b1f-f4a5-4efb-be31-418e448394d0")
	)
	(bus_entry
		(at 283.21 77.47)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7a410f7f-b746-41c0-9408-6489156cec21")
	)
	(bus_entry
		(at 146.05 119.38)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8520dd8a-f30b-4d5c-ad8d-d9d5771950f1")
	)
	(bus_entry
		(at 146.05 130.81)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "86254fdd-5bbf-41b3-8ade-a69375e410d0")
	)
	(bus_entry
		(at 146.05 116.84)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8ce70adc-3e0a-4a80-9fdb-a4e562858b7f")
	)
	(bus_entry
		(at 146.05 149.86)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "99cb46ff-a9d4-49ad-8a81-dadd5f03dde6")
	)
	(bus_entry
		(at 146.05 134.62)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a40634fd-afa7-4f1e-a627-2fa53969b6f6")
	)
	(bus_entry
		(at 146.05 147.32)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a4c61045-b312-4918-b416-8dfa7f314689")
	)
	(bus_entry
		(at 142.24 80.01)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a7cf56a7-39cc-42cb-8613-3ffd24f0437f")
	)
	(bus_entry
		(at 142.24 74.93)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b1837701-eb9d-4f21-bc46-5be9086abb2e")
	)
	(bus_entry
		(at 212.09 80.01)
		(size -2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b781675f-cf8e-48fe-b09f-eccf2dc974d9")
	)
	(bus_entry
		(at 283.21 67.31)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bbdc91cd-9c82-4632-8fb5-e4e46f8afe8e")
	)
	(bus_entry
		(at 142.24 69.85)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bedb1844-1d13-483d-bf4d-4ccd91b08d4f")
	)
	(bus_entry
		(at 146.05 154.94)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c12716cc-2d86-429f-bb8e-15798a7d5997")
	)
	(bus_entry
		(at 146.05 144.78)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c32dda19-bf19-4b8c-b125-2054af034790")
	)
	(bus_entry
		(at 146.05 168.91)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d08e3f1b-fd26-49ce-af52-cd14d0c5ade4")
	)
	(bus_entry
		(at 146.05 137.16)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d6465bd9-c935-428f-a6b7-10c17ef1e24d")
	)
	(bus_entry
		(at 212.09 82.55)
		(size -2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d7579037-464d-42f6-9d8e-c01742c61832")
	)
	(bus_entry
		(at 72.39 80.01)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d89b76c8-642b-49f2-b171-cc594284e64c")
	)
	(bus_entry
		(at 146.05 139.7)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dc90621b-0b34-481b-8684-b6731637ff3c")
	)
	(bus_entry
		(at 212.09 69.85)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dfdcc4a4-b358-48cb-8c9b-114681fdc2c4")
	)
	(bus_entry
		(at 146.05 142.24)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e1937b82-d00a-4d42-ae3b-438a988dffff")
	)
	(bus_entry
		(at 212.09 67.31)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e8034155-69ae-4562-86f5-07b118bc66a5")
	)
	(bus_entry
		(at 146.05 125.73)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e90b500e-6f7d-473f-a00f-704c3a259cf8")
	)
	(bus_entry
		(at 72.39 67.31)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f1138f89-0e02-4b25-a0be-393067da8460")
	)
	(bus_entry
		(at 146.05 171.45)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f6e465cd-e03a-43fe-a532-b250507ed4dc")
	)
	(bus_entry
		(at 142.24 64.77)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f8f8e070-fbb9-426c-95d9-60970ff66754")
	)
	(bus_entry
		(at 146.05 121.92)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f906c7cb-23ea-473f-9d73-061b2424cf12")
	)
	(bus_entry
		(at 146.05 161.29)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f9f70678-3d55-4d7b-b08b-6675e6d7b4a5")
	)
	(bus_entry
		(at 139.7 80.01)
		(size 2.54 2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fa326bba-f0e6-4fc8-962d-1a13a63b8262")
	)
	(bus_entry
		(at 212.09 72.39)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fd138955-610e-4741-bec4-0698d961a39d")
	)
	(bus_entry
		(at 72.39 72.39)
		(size 2.54 -2.54)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fdb17bb1-acd3-48f9-a603-a3be77d55005")
	)
	(bus
		(pts
			(xy 350.52 77.47) (xy 350.52 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "01653846-a724-455f-83b0-b8b0b6817b00")
	)
	(wire
		(pts
			(xy 143.51 191.77) (xy 143.51 194.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "02414be5-cab4-467a-8dc5-2c9289219c9a")
	)
	(wire
		(pts
			(xy 214.63 72.39) (xy 231.14 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0517e1d1-8244-437e-8e85-1eead02d5a81")
	)
	(bus
		(pts
			(xy 148.59 125.73) (xy 148.59 128.27)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0781714d-b7ef-4381-b93e-293b0eefdff8")
	)
	(bus
		(pts
			(xy 148.59 152.4) (xy 148.59 156.21)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0822ab70-3fff-4d87-9f39-358c1006c9fd")
	)
	(bus
		(pts
			(xy 142.24 80.01) (xy 142.24 82.55)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0fbd7bfa-591a-454a-8233-2fd1d8f471fc")
	)
	(wire
		(pts
			(xy 231.14 64.77) (xy 214.63 64.77)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "10264029-e371-4929-a378-70391dbec0b2")
	)
	(wire
		(pts
			(xy 68.58 226.06) (xy 83.82 226.06)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "10865ea6-1aa7-499c-89d4-d8ac4d9432ad")
	)
	(wire
		(pts
			(xy 91.44 64.77) (xy 74.93 64.77)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "10c803b4-2af1-4675-bd12-005a7ad0f7e3")
	)
	(wire
		(pts
			(xy 123.19 166.37) (xy 146.05 166.37)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "11d39922-0f73-4079-b20e-6f7ff1256be4")
	)
	(bus
		(pts
			(xy 212.09 74.93) (xy 212.09 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "16f57f22-0a71-4c02-bdd2-339a7124f7da")
	)
	(bus
		(pts
			(xy 148.59 93.98) (xy 151.13 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "18686365-3f83-47cd-a7a8-ca9ac16c3de7")
	)
	(wire
		(pts
			(xy 161.29 77.47) (xy 144.78 77.47)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1ac504da-e475-44d4-9009-86bffdd4aebb")
	)
	(bus
		(pts
			(xy 151.13 91.44) (xy 209.55 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1be99e4d-8209-4d74-91b5-e9ce3921531f")
	)
	(bus
		(pts
			(xy 209.55 91.44) (xy 280.67 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1c726d2a-1e6c-4d6f-b44e-591f185bb275")
	)
	(bus
		(pts
			(xy 148.59 134.62) (xy 148.59 137.16)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1c916b14-862d-409d-b40f-3b6b8de53530")
	)
	(bus
		(pts
			(xy 72.39 69.85) (xy 72.39 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1d14913f-24b5-4671-bf66-1057da83017c")
	)
	(wire
		(pts
			(xy 146.05 158.75) (xy 123.19 158.75)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1d57cb38-6bc8-43b7-9619-2fb45062f45d")
	)
	(bus
		(pts
			(xy 142.24 64.77) (xy 142.24 67.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1d68104a-9871-46de-9cda-21c9444dbef6")
	)
	(wire
		(pts
			(xy 123.19 149.86) (xy 146.05 149.86)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1eb53a84-aa6e-4d0e-a850-bd98ecd48f36")
	)
	(bus
		(pts
			(xy 72.39 82.55) (xy 72.39 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1f0a5e0a-b43e-4474-b823-ed39ade5b2d2")
	)
	(wire
		(pts
			(xy 123.19 125.73) (xy 146.05 125.73)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1f6fe7fa-098b-449f-bf40-f66c7a413974")
	)
	(wire
		(pts
			(xy 123.19 142.24) (xy 146.05 142.24)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "22dc7836-7000-4189-9383-8016d7356e5e")
	)
	(wire
		(pts
			(xy 71.12 115.57) (xy 71.12 116.84)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "238ece9f-698c-450d-90e7-2bf91acbde9d")
	)
	(bus
		(pts
			(xy 212.09 67.31) (xy 212.09 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "253b78a7-c339-4045-95ba-63dd9a23ae21")
	)
	(wire
		(pts
			(xy 337.82 80.01) (xy 337.82 97.79)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "261ba4e9-607d-45e8-8759-f029647ec377")
	)
	(wire
		(pts
			(xy 161.29 67.31) (xy 144.78 67.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "26454013-e30f-4487-9c8b-09adddbc46ec")
	)
	(wire
		(pts
			(xy 76.2 222.25) (xy 76.2 228.6)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "26bda7f0-d650-4511-bd69-72374b91a6c1")
	)
	(bus
		(pts
			(xy 148.59 163.83) (xy 148.59 166.37)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2acd9ace-1cfc-4e8e-8a2d-00792a8491fa")
	)
	(wire
		(pts
			(xy 262.89 49.53) (xy 300.99 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2dbdf793-c77f-41bb-ae2f-64cb6c705dfb")
	)
	(wire
		(pts
			(xy 123.19 173.99) (xy 146.05 173.99)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2ed1d91f-587d-4dcc-a856-2e08c5ea3991")
	)
	(wire
		(pts
			(xy 123.19 179.07) (xy 148.59 179.07)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2fa0524b-fc40-4d9b-92af-34deadbc6bd6")
	)
	(bus
		(pts
			(xy 148.59 137.16) (xy 148.59 139.7)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3245b485-d903-401f-8201-2e0f53217737")
	)
	(wire
		(pts
			(xy 71.12 125.73) (xy 71.12 128.27)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "324eccfc-9b6e-4bb7-b302-78840e5e757a")
	)
	(wire
		(pts
			(xy 68.58 231.14) (xy 76.2 231.14)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3502a4f3-e21d-40ed-b03e-646e8b880209")
	)
	(wire
		(pts
			(xy 143.51 181.61) (xy 143.51 184.15)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "352509ea-f3b7-4499-b97e-a2495b7bfeb9")
	)
	(wire
		(pts
			(xy 231.14 67.31) (xy 214.63 67.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "357339f6-f4e1-4f0a-a641-359861750410")
	)
	(wire
		(pts
			(xy 295.91 113.03) (xy 295.91 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "373fef4d-163f-431c-a42c-890a8dbfa4ff")
	)
	(wire
		(pts
			(xy 193.04 80.01) (xy 209.55 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "389a682f-0a8c-49fe-b4a4-92223f8e8683")
	)
	(wire
		(pts
			(xy 123.19 168.91) (xy 146.05 168.91)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "406f511e-177e-4d1e-9c3f-a60aa0a907d4")
	)
	(wire
		(pts
			(xy 91.44 77.47) (xy 74.93 77.47)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "413f900a-93e3-48c9-80f9-585c7e3fae69")
	)
	(wire
		(pts
			(xy 226.06 80.01) (xy 231.14 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "415149ae-59da-4b6d-89b1-a2492179d833")
	)
	(bus
		(pts
			(xy 72.39 74.93) (xy 72.39 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "418e5706-8f42-4020-8945-eee49e022ca8")
	)
	(bus
		(pts
			(xy 148.59 114.3) (xy 148.59 116.84)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "42cf30d7-59ae-4ec6-a6bb-bac239cc6c22")
	)
	(bus
		(pts
			(xy 283.21 74.93) (xy 283.21 77.47)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "42e02855-8be5-4ab1-8087-c01aebea4b6c")
	)
	(wire
		(pts
			(xy 337.82 97.79) (xy 226.06 97.79)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4516b693-aa2d-4455-99ba-fcf16bb5ea86")
	)
	(wire
		(pts
			(xy 91.44 233.68) (xy 83.82 233.68)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "474ac010-96e7-4fa4-acbb-eb00f179f92b")
	)
	(wire
		(pts
			(xy 123.19 176.53) (xy 146.05 176.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "48035da5-2750-4123-b542-6aa56a6311bb")
	)
	(wire
		(pts
			(xy 123.19 152.4) (xy 146.05 152.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4ad92bd8-67a2-457b-8542-65aebc1c5790")
	)
	(bus
		(pts
			(xy 148.59 128.27) (xy 148.59 132.08)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4e6adfb8-f55c-4542-ab2f-f1c812347734")
	)
	(wire
		(pts
			(xy 300.99 69.85) (xy 285.75 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4fc5b6cb-80dd-4b93-85fd-cc655f206f9f")
	)
	(bus
		(pts
			(xy 212.09 82.55) (xy 212.09 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4fff69ba-2f09-41af-b86f-edfc8aa9bd28")
	)
	(wire
		(pts
			(xy 91.44 80.01) (xy 74.93 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "507b576f-664b-4ddd-9963-407c19beade9")
	)
	(bus
		(pts
			(xy 148.59 139.7) (xy 148.59 142.24)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "50957826-fea7-4a99-a958-1a07f4f23c04")
	)
	(wire
		(pts
			(xy 123.19 49.53) (xy 161.29 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "51359a8c-63ed-4b7c-b629-ee89957f0224")
	)
	(bus
		(pts
			(xy 72.39 88.9) (xy 74.93 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "52a782f5-6af5-4875-9b77-d5e07956ab8f")
	)
	(wire
		(pts
			(xy 123.19 121.92) (xy 146.05 121.92)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "53200e03-c791-4ab1-9786-970872c09dce")
	)
	(wire
		(pts
			(xy 60.96 54.61) (xy 60.96 57.15)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "532c7f79-ca8f-4920-bd22-01ae620c0501")
	)
	(wire
		(pts
			(xy 226.06 97.79) (xy 226.06 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "53d07f8d-9219-476e-be2f-9495e46ec092")
	)
	(wire
		(pts
			(xy 332.74 74.93) (xy 347.98 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "54ae06df-b5eb-4378-8084-8ea9a21d9c3a")
	)
	(wire
		(pts
			(xy 83.82 233.68) (xy 83.82 226.06)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "54d34ffa-e68d-498c-9abb-6c478a8c966f")
	)
	(bus
		(pts
			(xy 212.09 88.9) (xy 209.55 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5759eb94-b998-4640-b471-611fa194d280")
	)
	(wire
		(pts
			(xy 146.05 209.55) (xy 146.05 212.09)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "58160ace-5c25-4f81-8f40-61da54b1ec1a")
	)
	(wire
		(pts
			(xy 91.44 69.85) (xy 74.93 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "581da531-165d-4d51-976f-5c350e7edc3c")
	)
	(bus
		(pts
			(xy 212.09 69.85) (xy 212.09 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "58345a40-6afa-44be-8bc1-18a585350c72")
	)
	(wire
		(pts
			(xy 123.19 134.62) (xy 146.05 134.62)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5c679535-ef81-41f8-8dca-a4bb0f0f1dcd")
	)
	(bus
		(pts
			(xy 280.67 91.44) (xy 347.98 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6149c937-7bda-4ca2-ad4f-a570834b8991")
	)
	(bus
		(pts
			(xy 142.24 72.39) (xy 142.24 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "61c26706-9732-4ef2-bdae-b5aa0ba7d948")
	)
	(wire
		(pts
			(xy 123.19 171.45) (xy 146.05 171.45)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "630ba20e-0d54-4cb8-a25a-49a17ccb5624")
	)
	(wire
		(pts
			(xy 123.19 116.84) (xy 146.05 116.84)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "63b7efcc-7fbd-472c-8976-22f064c43925")
	)
	(bus
		(pts
			(xy 148.59 168.91) (xy 148.59 171.45)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "644a0ca1-3c94-474a-a207-3618d6d8592b")
	)
	(bus
		(pts
			(xy 283.21 77.47) (xy 283.21 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "64c2605a-09dd-44e7-a5f8-caeab40d2cc1")
	)
	(wire
		(pts
			(xy 161.29 72.39) (xy 144.78 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "66b0222e-a9f2-4e27-8e29-6dc52b847969")
	)
	(bus
		(pts
			(xy 148.59 156.21) (xy 148.59 158.75)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6c00b061-3f9c-4feb-896a-6be113cf354c")
	)
	(wire
		(pts
			(xy 123.19 137.16) (xy 146.05 137.16)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6d2338d5-8614-448f-ae20-accc893b4017")
	)
	(bus
		(pts
			(xy 148.59 144.78) (xy 148.59 147.32)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6d570dd8-e6ca-4c1e-917b-0a36d6c152ec")
	)
	(wire
		(pts
			(xy 193.04 49.53) (xy 231.14 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6ef6aee8-c266-4f54-9d64-d72f39ffc315")
	)
	(wire
		(pts
			(xy 66.04 49.53) (xy 91.44 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "70af90d4-a347-4632-86f5-8d54cfc5629e")
	)
	(bus
		(pts
			(xy 148.59 161.29) (xy 148.59 163.83)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "71dcdea5-ff8c-45a3-9f16-576302cb5952")
	)
	(wire
		(pts
			(xy 91.44 67.31) (xy 74.93 67.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "74d07e61-47b9-4244-8fab-a3a2684f23e9")
	)
	(bus
		(pts
			(xy 142.24 69.85) (xy 142.24 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "77b09942-15f8-42a8-813f-4c2b74c8644e")
	)
	(wire
		(pts
			(xy 60.96 175.26) (xy 60.96 177.8)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7ba7c04f-d9fc-43ff-bc02-7e3c3b152eff")
	)
	(bus
		(pts
			(xy 283.21 69.85) (xy 283.21 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7bd1df64-0340-4517-aa0d-1c33c1c525bc")
	)
	(bus
		(pts
			(xy 148.59 116.84) (xy 148.59 119.38)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7c4d6baf-2f70-4c67-a524-831955c25afd")
	)
	(wire
		(pts
			(xy 123.19 139.7) (xy 146.05 139.7)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7dc815c6-e3de-4c94-96d1-8b3766836c00")
	)
	(wire
		(pts
			(xy 78.74 125.73) (xy 78.74 124.46)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7dd10181-9d2f-4af7-a897-327d1ead8b7c")
	)
	(bus
		(pts
			(xy 148.59 142.24) (xy 148.59 144.78)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7e8f6168-a20c-4c05-aadc-3c08491aef36")
	)
	(wire
		(pts
			(xy 83.82 226.06) (xy 91.44 226.06)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "83082a15-5bb4-465d-8a5b-675acc6ba487")
	)
	(wire
		(pts
			(xy 76.2 228.6) (xy 76.2 231.14)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8443ba1a-1c07-4339-849b-57df9cd574f6")
	)
	(wire
		(pts
			(xy 123.19 154.94) (xy 146.05 154.94)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8586a12c-132d-40d0-84a6-11e503847a4e")
	)
	(wire
		(pts
			(xy 66.04 113.03) (xy 91.44 113.03)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "87c2a516-b6f0-4100-8ca6-3f090d133ee0")
	)
	(wire
		(pts
			(xy 83.82 222.25) (xy 83.82 226.06)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "892e355f-1fef-4408-8a81-c98e791625eb")
	)
	(wire
		(pts
			(xy 193.04 77.47) (xy 209.55 77.47)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8bae5909-6ba0-46da-abb5-da7f1310d0d7")
	)
	(bus
		(pts
			(xy 148.59 93.98) (xy 148.59 114.3)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8daa122b-6646-4fae-bd3a-f5f7fd6052bd")
	)
	(wire
		(pts
			(xy 161.29 62.23) (xy 144.78 62.23)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8f10d65f-ff3c-4d76-af1d-688e24640afa")
	)
	(wire
		(pts
			(xy 78.74 115.57) (xy 78.74 116.84)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "8faca8db-3fba-4aaa-8c50-45caba8285cf")
	)
	(wire
		(pts
			(xy 91.44 158.75) (xy 68.58 158.75)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "90c2668a-e3f6-41c9-a850-2e21ea0e9380")
	)
	(bus
		(pts
			(xy 148.59 147.32) (xy 148.59 149.86)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "910eb0db-caa9-4c39-93e8-2674a7dcd85d")
	)
	(wire
		(pts
			(xy 161.29 64.77) (xy 144.78 64.77)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "946ce70e-bf53-457b-9d24-a407fef45af4")
	)
	(bus
		(pts
			(xy 148.59 119.38) (xy 148.59 123.19)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "96a18f9e-2332-42f7-a2d5-9f91cb0bf7ba")
	)
	(bus
		(pts
			(xy 283.21 72.39) (xy 283.21 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "97db1975-e496-41b5-8383-feff5d5334e0")
	)
	(wire
		(pts
			(xy 76.2 231.14) (xy 76.2 238.76)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "99758758-92fb-48b5-bcb5-776ec80d9c70")
	)
	(bus
		(pts
			(xy 148.59 149.86) (xy 148.59 152.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "99b47dad-b734-4afa-847b-918cf7c8f657")
	)
	(wire
		(pts
			(xy 123.19 144.78) (xy 146.05 144.78)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9a92d16b-31e3-4348-88fa-4beb0ec2ac7f")
	)
	(wire
		(pts
			(xy 295.91 80.01) (xy 300.99 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9c41330e-890b-4d25-a1b3-3e3ea8930d57")
	)
	(wire
		(pts
			(xy 123.19 181.61) (xy 143.51 181.61)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9cdd6ee9-aea2-4340-8f92-e26e58b5cbf5")
	)
	(bus
		(pts
			(xy 72.39 80.01) (xy 72.39 82.55)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a87c891e-8672-4cb1-a793-5f70dc1450e2")
	)
	(wire
		(pts
			(xy 123.19 113.03) (xy 295.91 113.03)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "aa1b5e46-452b-4ccf-a735-7445a2c16097")
	)
	(wire
		(pts
			(xy 123.19 147.32) (xy 146.05 147.32)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ab3f8865-e37e-4bf9-9bb8-6e4a1f7db2d1")
	)
	(bus
		(pts
			(xy 212.09 80.01) (xy 212.09 82.55)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ac149698-81d8-49b6-97fd-a493f5d96ba5")
	)
	(wire
		(pts
			(xy 161.29 80.01) (xy 144.78 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ae28925d-6186-452c-a19a-c645f48e3813")
	)
	(wire
		(pts
			(xy 300.99 72.39) (xy 285.75 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "aeece733-8d41-4c53-9127-19434aeed089")
	)
	(bus
		(pts
			(xy 148.59 132.08) (xy 148.59 134.62)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b044f03c-000a-4df7-8508-914756568195")
	)
	(bus
		(pts
			(xy 148.59 123.19) (xy 148.59 125.73)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b2550ac3-9c74-4291-815d-525d03e54334")
	)
	(wire
		(pts
			(xy 66.04 125.73) (xy 71.12 125.73)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b266251b-0f1e-4852-a3e7-b6a36c6241d5")
	)
	(bus
		(pts
			(xy 142.24 67.31) (xy 142.24 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b35d9ecd-d028-44f7-9e51-d9924d0eb057")
	)
	(wire
		(pts
			(xy 332.74 49.53) (xy 358.14 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b6787c7e-710f-4930-b215-a38b4c14d279")
	)
	(bus
		(pts
			(xy 212.09 72.39) (xy 212.09 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bb8944e2-52b7-4d8d-bcef-a7f9e7128b0f")
	)
	(wire
		(pts
			(xy 71.12 115.57) (xy 78.74 115.57)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bbe53812-c5ab-4758-9458-f952753ff8ad")
	)
	(bus
		(pts
			(xy 148.59 171.45) (xy 148.59 173.99)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bc885c43-86f6-4f9b-b19d-65b15a241936")
	)
	(wire
		(pts
			(xy 68.58 166.37) (xy 91.44 166.37)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "be7ece97-917d-430f-b7c1-c5dec91a82cc")
	)
	(wire
		(pts
			(xy 300.99 64.77) (xy 285.75 64.77)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c260ff8a-f32d-48f1-a42a-ac19e48f48c3")
	)
	(wire
		(pts
			(xy 300.99 74.93) (xy 285.75 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c4247ed6-e3b7-4bef-a8c5-24b2b2698a50")
	)
	(bus
		(pts
			(xy 72.39 72.39) (xy 72.39 74.93)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c873184c-7e5b-4229-9b43-9fc0ce226c9b")
	)
	(bus
		(pts
			(xy 148.59 158.75) (xy 148.59 161.29)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "cbac01c2-0e8e-4e77-a22f-dccf1c7dc14a")
	)
	(bus
		(pts
			(xy 139.7 91.44) (xy 151.13 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ccc6d886-a97d-49e5-98f8-576d671403a2")
	)
	(wire
		(pts
			(xy 161.29 69.85) (xy 144.78 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "cd35f0d6-b7a2-4103-a64f-5934f4dbe0b8")
	)
	(wire
		(pts
			(xy 71.12 125.73) (xy 78.74 125.73)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "cdd94e59-ce38-457c-a8e8-c19492c8ab87")
	)
	(wire
		(pts
			(xy 71.12 115.57) (xy 71.12 107.95)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ce9a9a3d-8184-4ca0-a671-1008c00031df")
	)
	(wire
		(pts
			(xy 231.14 69.85) (xy 214.63 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d28644dc-4f21-495c-9f95-a7a7aec2fbc5")
	)
	(wire
		(pts
			(xy 66.04 115.57) (xy 71.12 115.57)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d33166a8-b62b-463a-ab71-67a945a0567a")
	)
	(wire
		(pts
			(xy 332.74 80.01) (xy 337.82 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d4213ef6-2e93-4035-9ae0-c664005f387c")
	)
	(bus
		(pts
			(xy 283.21 67.31) (xy 283.21 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d5894af6-8edc-4ec4-b6dc-836ef61a9d01")
	)
	(bus
		(pts
			(xy 72.39 67.31) (xy 72.39 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d85588ab-08ce-4566-9e99-1a94ab6e9abb")
	)
	(bus
		(pts
			(xy 283.21 88.9) (xy 280.67 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "da78861b-f9d7-4121-b5fd-fe0060a86854")
	)
	(wire
		(pts
			(xy 123.19 128.27) (xy 146.05 128.27)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dadee68d-e915-4aa5-8e7a-5f5515a01446")
	)
	(wire
		(pts
			(xy 60.96 173.99) (xy 60.96 175.26)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "db9d1ecf-6930-40b2-b666-111757755878")
	)
	(wire
		(pts
			(xy 300.99 67.31) (xy 285.75 67.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dc2bc585-7ab9-40a0-aecd-baa9d04e967e")
	)
	(wire
		(pts
			(xy 60.96 175.26) (xy 58.42 175.26)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dd65a4ea-a92c-4e33-bd17-0413095bdcf6")
	)
	(wire
		(pts
			(xy 363.22 54.61) (xy 363.22 57.15)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "def816a0-bc34-4ec2-85bf-e2bd178cfa98")
	)
	(wire
		(pts
			(xy 148.59 179.07) (xy 148.59 184.15)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dfc0208d-0807-481b-aad9-9c1ab63edcd3")
	)
	(wire
		(pts
			(xy 71.12 124.46) (xy 71.12 125.73)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e235a5f2-2ed8-4051-a7b3-366b554d561d")
	)
	(wire
		(pts
			(xy 91.44 72.39) (xy 74.93 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e285576e-5264-434b-b331-72aa114df4d9")
	)
	(wire
		(pts
			(xy 58.42 175.26) (xy 58.42 173.99)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e874c4e0-d55e-459a-9c99-d63963d8f6e7")
	)
	(bus
		(pts
			(xy 74.93 91.44) (xy 139.7 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ebaa117f-33ff-4e3c-b405-956c79bb3f7f")
	)
	(wire
		(pts
			(xy 123.19 119.38) (xy 146.05 119.38)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ebd5aabe-6924-4408-b00c-051b79ed3583")
	)
	(wire
		(pts
			(xy 68.58 228.6) (xy 76.2 228.6)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ed903643-a3b2-486b-860b-d2fb7e8445b9")
	)
	(bus
		(pts
			(xy 347.98 91.44) (xy 350.52 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "eec2a1eb-890e-4a8f-aa15-b8b1b4cbc0c3")
	)
	(wire
		(pts
			(xy 123.19 161.29) (xy 146.05 161.29)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f0504321-978d-4acc-8d04-0a14367560e9")
	)
	(bus
		(pts
			(xy 142.24 74.93) (xy 142.24 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f265a003-45bc-421f-928f-f1fc98bed0c2")
	)
	(wire
		(pts
			(xy 91.44 163.83) (xy 68.58 163.83)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f466289c-6d43-463d-a1c6-8063094e758d")
	)
	(bus
		(pts
			(xy 148.59 166.37) (xy 148.59 168.91)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f5120481-5af4-43db-ae03-ca678cd6aa01")
	)
	(wire
		(pts
			(xy 123.19 80.01) (xy 139.7 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f6705297-8670-4bd5-8808-a0f3c53fe6af")
	)
	(wire
		(pts
			(xy 123.19 130.81) (xy 146.05 130.81)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f7775a53-7e0b-4d88-959d-a87c508d45fd")
	)
	(wire
		(pts
			(xy 148.59 191.77) (xy 148.59 194.31)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f7dbdb3d-e022-4bda-8e61-04a211805ca2")
	)
	(wire
		(pts
			(xy 123.19 163.83) (xy 146.05 163.83)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f891ae89-1485-418b-ab55-8ea6e3d8f310")
	)
	(bus
		(pts
			(xy 142.24 82.55) (xy 142.24 88.9)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f9535e37-096a-429e-9098-d4b3220cd7c1")
	)
	(bus
		(pts
			(xy 142.24 88.9) (xy 139.7 91.44)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fc9bf490-200d-4be7-a140-8e70214e9af4")
	)
	(label "ATT-D1"
		(at 146.05 147.32 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "05a2f6be-44ab-439a-a4e7-88ccd89997a0")
	)
	(label "Unlvld"
		(at 347.98 74.93 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "05cb7c58-6d49-4517-b456-fcb908da4a57")
	)
	(label "SDA"
		(at 74.93 64.77 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "07798e22-999a-43ac-aa97-b5d5a3755df8")
	)
	(label "~{CS-DDS}"
		(at 146.05 130.81 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "10bf9a1f-9952-4dfa-9505-65f4d20e9553")
	)
	(label "SDA"
		(at 146.05 116.84 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "129bcba0-f61e-4538-b0e9-f2ad970a5d69")
	)
	(label "PLL-Mux"
		(at 146.05 168.91 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "1c026d49-588b-4fb3-a9f0-9ab0395c422e")
	)
	(label "DDS-Update"
		(at 146.05 158.75 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "1e2a1d4d-0587-45a2-8cfc-7a8d9f79ed44")
	)
	(label "ATT-D1"
		(at 285.75 67.31 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "246e8cea-dee7-4a36-87a6-b791357281a2")
	)
	(label "DDS-Update"
		(at 144.78 77.47 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "2b807008-e997-4f2c-839c-f12072fe8e8f")
	)
	(label "~{CS-DDS}"
		(at 144.78 69.85 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "2f754cc4-0470-4e1d-b355-f62a9a34697f")
	)
	(label "ATT-D3"
		(at 146.05 152.4 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "30ec0d3d-71b3-4a9f-b2e5-92a21ae0cf0c")
	)
	(label "ATT-D2"
		(at 146.05 149.86 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "33cc0326-7d84-4466-a61a-d0595b0c11b4")
	)
	(label "DDS-Reset"
		(at 146.05 161.29 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "344e80d6-35f1-432b-91b6-39802a5531e1")
	)
	(label "SLE"
		(at 144.78 67.31 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "346d42d7-7cf0-414a-97cd-844655b4e078")
	)
	(label "ATT-LE"
		(at 285.75 74.93 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "373e7004-314c-4f5a-a5c4-dd7583dc589a")
	)
	(label "ATT-D0"
		(at 146.05 144.78 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "3b97587a-a067-4a21-bfd4-20aee7a05b41")
	)
	(label "ATT-D3"
		(at 285.75 72.39 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "48b328d4-a949-48d5-a9a6-341fc04b5bb9")
	)
	(label "SCK"
		(at 74.93 67.31 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "49f38e0f-3ddd-4f2f-b047-77adf7793963")
	)
	(label "ATT-LE"
		(at 146.05 154.94 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "4cf04b88-35e0-40ee-b1a0-2d4334606c3f")
	)
	(label "FSW-C"
		(at 214.63 69.85 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "50e8f40c-58cc-439d-81bf-489d0d23a6b4")
	)
	(label "Unlvld"
		(at 146.05 171.45 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "5a7b5039-3990-4991-b370-f164be5bbf4c")
	)
	(label "FSW-B"
		(at 146.05 137.16 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "6bd676fb-7024-423e-b1e3-9ce5eb81700f")
	)
	(label "CS-Ref-PLL"
		(at 146.05 125.73 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "6d6cf2eb-5770-4139-9b23-e79cc6afecee")
	)
	(label "SLE"
		(at 146.05 121.92 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "700fab3e-7b28-42c5-8fc7-843ee3c5ba4f")
	)
	(label "Int-Sel"
		(at 146.05 173.99 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "71c3914b-4529-4578-b27d-e4a27adb19ca")
	)
	(label "FSW-A"
		(at 214.63 64.77 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "7f000199-63cc-44ce-823a-7f200ae821ad")
	)
	(label "Bypass"
		(at 214.63 72.39 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "83c38431-c65e-4d6d-9237-40036abc716f")
	)
	(label "Int-Sel"
		(at 74.93 77.47 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "953a2756-06d5-46ca-9ac6-876f7cdacc1d")
	)
	(label "Ref-Lock"
		(at 146.05 163.83 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "960570ad-1c8f-487b-b929-d77cab6bf2d0")
	)
	(label "SCK"
		(at 144.78 64.77 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "9f80291b-084d-4eea-9cfe-631bbde4a92d")
	)
	(label "M-Lock"
		(at 209.55 77.47 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "a0d60708-bf61-4b70-9b9f-9e15a130a1ed")
	)
	(label "SLE"
		(at 74.93 69.85 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "a137457a-6813-4058-ab86-50ba2eeed23b")
	)
	(label "PLL-Mux"
		(at 209.55 80.01 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "ab087658-b897-4852-abcf-9b69e61c497b")
	)
	(label "SCK"
		(at 146.05 119.38 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "ac17af5d-32e0-491a-a16f-cc5c1050011c")
	)
	(label "M-Lock"
		(at 146.05 166.37 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "b17a7d3f-d43e-4d9f-8e34-c73c1a759d2c")
	)
	(label "Ref-Lock"
		(at 139.7 80.01 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "b9f91a6c-f21a-4f49-90bb-2a3a043acb6b")
	)
	(label "CS-M-PLL"
		(at 144.78 72.39 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "c76b08ff-022f-4771-9eb0-9219aa7aee99")
	)
	(label "DDS-Reset"
		(at 144.78 80.01 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "d5c77a8b-801f-4de9-b9f2-2133fea24d23")
	)
	(label "FSW-B"
		(at 214.63 67.31 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "d8f867aa-e1f1-46b1-858e-c8701e43b42e")
	)
	(label "ATT-D2"
		(at 285.75 69.85 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "da334693-57fe-41c8-ae33-6ae6a114e527")
	)
	(label "CS-M-PLL"
		(at 146.05 128.27 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "dcc61231-0830-445d-9eec-585f332a4f98")
	)
	(label "FSW-A"
		(at 146.05 134.62 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "ddb73cb0-f77c-4187-aabc-0b6dec8be6aa")
	)
	(label "Ext-Sel"
		(at 74.93 80.01 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "ddc1cc3d-1b73-4c35-adeb-ffb49576abd3")
	)
	(label "CS-Ref-PLL"
		(at 74.93 72.39 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "ddd1ccd7-e28a-4380-a8a5-e0323e22cdf6")
	)
	(label "Bypass"
		(at 146.05 142.24 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "e1ff208e-9356-4448-a614-4a76f3bd12c1")
	)
	(label "Ext-Sel"
		(at 146.05 176.53 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "ebbbfd34-6afa-460d-8284-fc5f6ff1b5e4")
	)
	(label "SDA"
		(at 144.78 62.23 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "f4851163-5689-4def-96cb-f35f11f0b046")
	)
	(label "ATT-D0"
		(at 285.75 64.77 0)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify left bottom)
		)
		(uuid "f8e412dd-0269-45b0-8b14-61c0a9e3a06d")
	)
	(label "FSW-C"
		(at 146.05 139.7 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "fee40ec4-ad37-4bd4-ba38-68d2cdde7ac9")
	)
	(symbol
		(lib_id "Connector:Conn_Coaxial")
		(at 60.96 49.53 0)
		(mirror y)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dcfff32")
		(property "Reference" "J1"
			(at 60.706 46.482 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "SMA"
			(at 58.039 49.53 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Footprint" "connectors:SMA-Jack_angle"
			(at 60.96 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 60.96 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "3e629853-cb78-48e0-860d-db8065a69dd3")
		)
		(pin "1"
			(uuid "847e8618-bf44-4fd0-b0fc-1863348e37cf")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "J1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 60.96 57.15 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dd009e4")
		(property "Reference" "#GND01"
			(at 60.96 61.468 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 60.96 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 60.96 58.42 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 60.96 58.42 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 57.15 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "3ced8094-28a0-46d8-88f3-24bf1d6895f7")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND01")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:Conn_Coaxial")
		(at 363.22 49.53 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dd01ef2")
		(property "Reference" "J2"
			(at 363.474 46.482 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Cinch 142-0781-821"
			(at 366.141 49.53 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Footprint" "connectors:SMA-Launcher_Cinch_142-0771-831"
			(at 363.22 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 363.22 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 363.22 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "6b97992f-c1ef-448a-92dc-81d1b96726ab")
		)
		(pin "2"
			(uuid "7b6b4e8a-89ac-40f5-b4f1-e91ae9b21d79")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "J2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 363.22 57.15 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dd01ef9")
		(property "Reference" "#GND02"
			(at 363.22 61.468 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 363.22 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 363.22 58.42 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 363.22 58.42 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 363.22 57.15 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "96cfbaf0-f0f2-4707-8ebf-e8d17c967ab2")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND02")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:USB_A")
		(at 60.96 163.83 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dd9f0f2")
		(property "Reference" "J4"
			(at 60.96 152.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Würth 614 004 190 021"
			(at 60.96 154.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_USB:USB_A_Stewart_SS-52100-001_Horizontal"
			(at 64.77 165.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 64.77 165.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 163.83 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "4"
			(uuid "8eed1c0a-9fab-4b34-a9dd-b9b08e3dee42")
		)
		(pin "1"
			(uuid "e6915e69-f923-48ba-9ad1-ec92aeb00cc2")
		)
		(pin "5"
			(uuid "be3499ac-efe3-47a6-b1a3-7c67b83f3365")
		)
		(pin "3"
			(uuid "dfe71411-83d7-472c-877d-98c595bb2d5b")
		)
		(pin "2"
			(uuid "298bf13a-4f4c-459e-b119-80bd4e41007f")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "J4")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 60.96 177.8 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005dda6a80")
		(property "Reference" "#GND04"
			(at 60.96 182.118 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 60.96 180.34 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 60.96 179.07 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 60.96 179.07 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 177.8 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "e1843d3e-77cd-4ffe-8fb2-39e99a345507")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND04")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x06")
		(at 60.96 118.11 0)
		(mirror y)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005ddb0df7")
		(property "Reference" "J3"
			(at 60.96 110.49 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Conn_01x06"
			(at 60.96 128.27 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Footprint" "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical"
			(at 60.96 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 60.96 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "d0221004-d571-4147-925e-91161e16f5dc")
		)
		(pin "5"
			(uuid "76e34b8a-5970-489d-9bdf-c99a5f38450f")
		)
		(pin "3"
			(uuid "08ad0e6f-c0fd-4786-8650-6d8730efa3f5")
		)
		(pin "6"
			(uuid "d947b68f-5054-4ff1-8bd8-eb75c410b5f1")
		)
		(pin "4"
			(uuid "126829c0-bf87-41a4-9baa-fa694f0fb93a")
		)
		(pin "1"
			(uuid "dc447167-bb4f-4866-aef7-aff8ea55c6ef")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "J3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:C")
		(at 71.12 120.65 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005ddb7f4a")
		(property "Reference" "C1"
			(at 71.755 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "100n"
			(at 71.755 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Capacitor_SMD:C_0805_2012Metric"
			(at 72.0852 124.46 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 71.12 120.65 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 71.12 120.65 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "cdbf3c07-b40f-41a0-9124-6800028e8b28")
		)
		(pin "2"
			(uuid "cfe2f104-bc09-44ef-8ebe-d6b0ddf4cdf4")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "C1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 71.12 128.27 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005ddbc38b")
		(property "Reference" "#GND03"
			(at 71.12 132.588 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 71.12 130.81 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 71.12 129.54 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 71.12 129.54 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 71.12 128.27 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "a2f8631b-8cc5-488e-96e5-7d8fef7a6046")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND03")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:+3.3V")
		(at 71.12 107.95 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005ddbeec7")
		(property "Reference" "#PWR01"
			(at 71.12 111.76 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "+3.3V"
			(at 71.12 104.394 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 71.12 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 71.12 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 71.12 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "270f3597-ec20-467c-9aa0-773d5eebd9ef")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#PWR01")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 76.2 238.76 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e222241")
		(property "Reference" "#GND06"
			(at 76.2 243.078 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 76.2 241.3 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 76.2 240.03 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 76.2 240.03 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 76.2 238.76 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "80158af4-6eb2-494b-9b69-25381adc0007")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND06")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:PWR_FLAG")
		(at 76.2 222.25 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e274992")
		(property "Reference" "#FLG01"
			(at 76.2 220.345 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "PWR_FLAG"
			(at 76.2 218.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Footprint" ""
			(at 76.2 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 76.2 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 76.2 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "9b5a48ae-24d2-4114-a7b4-8de2ace3aeaa")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#FLG01")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:Barrel_Jack_Switch")
		(at 60.96 228.6 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e282968")
		(property "Reference" "J5"
			(at 60.96 220.98 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Würth 694 108 301 002"
			(at 60.96 223.52 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002"
			(at 62.23 229.616 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 62.23 229.616 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 60.96 228.6 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "68859fae-dbf7-4237-ac5c-1a2fb60bf769")
		)
		(pin "3"
			(uuid "19f5ce83-001e-4545-96db-4ca2934556dc")
		)
		(pin "1"
			(uuid "14369846-5764-46bc-864a-ed6c95086a5c")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "J5")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:PWR_FLAG")
		(at 83.82 222.25 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e293f14")
		(property "Reference" "#FLG02"
			(at 83.82 220.345 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "PWR_FLAG"
			(at 83.82 218.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Footprint" ""
			(at 83.82 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 83.82 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 83.82 222.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "6cb53f8c-b9f2-4742-a6d1-535978fb5944")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#FLG02")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 148.59 187.96 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e2f97ca")
		(property "Reference" "R2"
			(at 146.558 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "270"
			(at 148.59 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric"
			(at 150.368 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 148.59 187.96 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 148.59 187.96 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "7a36e865-93a1-4dc9-b18d-0c5e591010a0")
		)
		(pin "1"
			(uuid "771ea270-cf36-408e-b7d0-793d6b4af8d8")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "R2")
					(unit 1)
				)
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4/00000000-0000-0000-0000-00005dcd3cb2"
					(reference "R?")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "mario_aux:GND")
		(at 146.05 212.09 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e2f97d7")
		(property "Reference" "#GND05"
			(at 146.05 216.408 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 146.05 214.63 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 146.05 213.36 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 146.05 213.36 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 146.05 212.09 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "0a6f0ef0-2404-4e0d-a486-8361714cd6a8")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "#GND05")
					(unit 1)
				)
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4/00000000-0000-0000-0000-00005dcd3cb2"
					(reference "#GND?")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:LED_Dual_ACA")
		(at 146.05 201.93 270)
		(mirror x)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e321bb2")
		(property "Reference" "D1"
			(at 135.89 200.66 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "WP3VEGW"
			(at 135.89 203.2 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "LED_THT:LED_D3.0mm-3"
			(at 146.05 201.93 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 146.05 201.93 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 146.05 201.93 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "51bb79fe-ee67-4795-b11e-7d0d7b50b75b")
		)
		(pin "3"
			(uuid "7b350f8b-119d-43fa-bbb3-edef3afa5dcc")
		)
		(pin "1"
			(uuid "21ee60dd-7e2f-48e0-bd04-7b7e53240722")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "D1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 143.51 187.96 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e33e0c0")
		(property "Reference" "R1"
			(at 141.478 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "270"
			(at 143.51 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric"
			(at 145.288 187.96 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 143.51 187.96 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 143.51 187.96 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "a1940bba-7505-494c-b69d-0666ebd4cae8")
		)
		(pin "1"
			(uuid "4998f033-bae2-4c41-9a72-f2cb6c5b5ed5")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "R1")
					(unit 1)
				)
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4/00000000-0000-0000-0000-00005dcd3cb2"
					(reference "R?")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:CP")
		(at 78.74 120.65 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005e75fc14")
		(property "Reference" "C2"
			(at 79.375 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "100µ"
			(at 79.375 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm"
			(at 79.7052 124.46 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 78.74 120.65 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 78.74 120.65 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "429c951b-1fac-4418-ae0e-e6502d8f54f4")
		)
		(pin "2"
			(uuid "2383d8c1-9d7b-455a-a7b0-1d83d18783a4")
		)
		(instances
			(project ""
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(reference "C2")
					(unit 1)
				)
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4/00000000-0000-0000-0000-00005dcd3cb2"
					(reference "C?")
					(unit 1)
				)
			)
		)
	)
	(sheet
		(at 161.29 45.72)
		(size 31.75 38.1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005d7c1ae2")
		(property "Sheetname" "PLL and DDS"
			(at 161.29 45.0084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "pll-dds.sch"
			(at 161.29 84.4046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "SDA" input
			(at 161.29 62.23 180)
			(uuid "411a06a4-52e2-46ff-a0ed-756c3b64aee4")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "PLL-Out" output
			(at 193.04 49.53 0)
			(uuid "e406b20c-7798-482e-adde-077cb3aa4872")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "PLL-Mux" output
			(at 193.04 80.01 0)
			(uuid "0ec9b6d8-d1eb-49cd-b4bb-d70a71eb0c10")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "SCK" input
			(at 161.29 64.77 180)
			(uuid "9a0ff59a-57b5-4cc9-b455-21197b8aef6c")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "SLE" input
			(at 161.29 67.31 180)
			(uuid "0e8713dd-7f67-474c-8937-00d72c58df12")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "M-Lock" output
			(at 193.04 77.47 0)
			(uuid "2dadf460-8ca0-4397-837c-d36506caef28")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Ref-In" input
			(at 161.29 49.53 180)
			(uuid "af23bef6-3bce-42ea-abc6-65731ee781d5")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "DDS-Reset" input
			(at 161.29 80.01 180)
			(uuid "4d1b561b-47f9-46f1-bee9-06a0bfb42e85")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "~{CS-DDS}" input
			(at 161.29 69.85 180)
			(uuid "861afeef-3167-47e0-ab4a-84714d65b383")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "CS-M-PLL" input
			(at 161.29 72.39 180)
			(uuid "ad0f1439-b304-42b7-88c0-36f7ceeb7cc7")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "DDS-Update" input
			(at 161.29 77.47 180)
			(uuid "07815d6b-f1e8-4b95-bc19-6fc27da4ad7e")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "5")
				)
			)
		)
	)
	(sheet
		(at 231.14 45.72)
		(size 31.75 38.1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005d929343")
		(property "Sheetname" "Harmonic Filter"
			(at 231.14 45.0084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "filter.sch"
			(at 231.14 84.4046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "RF-In" input
			(at 231.14 49.53 180)
			(uuid "ab90454c-59f9-4f74-9a1d-a89ff3359eb1")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "RF-Out" output
			(at 262.89 49.53 0)
			(uuid "b20c6705-7d93-455d-b3d4-15af72325734")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FSW-A" input
			(at 231.14 64.77 180)
			(uuid "8123824a-63b1-4954-a68c-ce93aa893def")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "FSW-B" input
			(at 231.14 67.31 180)
			(uuid "894fa588-3c6c-4d31-b20e-86f44ccfa872")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "FSW-C" input
			(at 231.14 69.85 180)
			(uuid "3f98f94d-424f-4711-8c24-d5fea6310176")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Level-Ctrl" input
			(at 231.14 80.01 180)
			(uuid "f590133b-2eb1-4a13-b441-079ebb0a8e5c")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Bypass" input
			(at 231.14 72.39 180)
			(uuid "44961d7b-e438-4fcb-91a4-01832a7cc0af")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "6")
				)
			)
		)
	)
	(sheet
		(at 300.99 45.72)
		(size 31.75 38.1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005d932121")
		(property "Sheetname" "Output Amp and Leveling"
			(at 300.99 45.0084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "leveling.sch"
			(at 300.99 84.4046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "RF-In" input
			(at 300.99 49.53 180)
			(uuid "f001d200-b660-40bb-9841-b69d7f10de58")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "RF-Out" output
			(at 332.74 49.53 0)
			(uuid "8dae6798-08fd-4bd6-a040-e9cde186990a")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-D0" input
			(at 300.99 64.77 180)
			(uuid "74c8783b-05d9-41b7-be66-643e3366c8e7")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "ATT-D1" input
			(at 300.99 67.31 180)
			(uuid "1e479121-2c6f-43b4-b46a-5b9f9a434f16")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "ATT-D2" input
			(at 300.99 69.85 180)
			(uuid "15aef42e-5ce7-48a6-b491-c69023ee619b")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "ATT-D3" input
			(at 300.99 72.39 180)
			(uuid "82f33a42-b07d-440a-84c9-4af84bee8099")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "ATT-LE" input
			(at 300.99 74.93 180)
			(uuid "e91db096-7e4d-4e0f-81b9-c7f6b55d2864")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Unlvld" output
			(at 332.74 74.93 0)
			(uuid "84d853ed-ec98-470d-9f9b-6a72c0139ee3")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Level-Ctrl" output
			(at 332.74 80.01 0)
			(uuid "07099198-5f58-4b4c-9a4e-761dda26d024")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "DAC" input
			(at 300.99 80.01 180)
			(uuid "db7a02a8-8206-4452-960f-8f0e2189fd46")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "7")
				)
			)
		)
	)
	(sheet
		(at 91.44 109.22)
		(size 31.75 76.2)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005d9321a2")
		(property "Sheetname" "Controller"
			(at 91.44 108.5084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "controller.sch"
			(at 91.44 186.0046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "UPDI" bidirectional
			(at 91.44 113.03 180)
			(uuid "fcebbf21-b173-4303-8326-d893b3bcf447")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "USB-D+" bidirectional
			(at 91.44 163.83 180)
			(uuid "0791f6c8-b472-4007-9cc4-fb54c7c1b7a8")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "USB-D-" bidirectional
			(at 91.44 166.37 180)
			(uuid "2db858a0-280e-4975-8afd-2a0880b970a2")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "USB-VBUS" passive
			(at 91.44 158.75 180)
			(uuid "a73f6af2-adb9-46de-adc4-a8352fa5a373")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "SDA" output
			(at 123.19 116.84 0)
			(uuid "7498fe85-843c-4218-aa09-4a643894842d")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "SCK" output
			(at 123.19 119.38 0)
			(uuid "f94bea9e-df69-4e4b-a7b9-d3b4c9a12689")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "SLE" output
			(at 123.19 121.92 0)
			(uuid "8bc19db7-e5a0-42e7-b00d-32e24252f756")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "DDS-Reset" output
			(at 123.19 161.29 0)
			(uuid "137d4445-85a9-4fba-85b2-cac045eb3ecf")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "CS-M-PLL" output
			(at 123.19 128.27 0)
			(uuid "082cec3c-7d14-449e-89a0-faa462623800")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "~{CS-DDS}" output
			(at 123.19 130.81 0)
			(uuid "7242cfde-810c-4583-892d-c37d0c8bb266")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "CS-Ref-PLL" output
			(at 123.19 125.73 0)
			(uuid "9d8c405b-7a74-444b-8bec-13eb350a2d76")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Ref-Lock" input
			(at 123.19 163.83 0)
			(uuid "7580927a-bd55-40e3-acfb-f97b69aafe3c")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "M-Lock" input
			(at 123.19 166.37 0)
			(uuid "3d1c3918-8677-401a-ac05-6323db048e8b")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "PLL-Mux" input
			(at 123.19 168.91 0)
			(uuid "9b2396ce-7477-4632-adf1-09dff941e900")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FSW-A" output
			(at 123.19 134.62 0)
			(uuid "ca8b23ca-cdf8-4f38-93aa-ed2e7e1d06fb")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FSW-B" output
			(at 123.19 137.16 0)
			(uuid "e86ac5fc-4107-49eb-bb4c-ad0459a738b8")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FSW-C" output
			(at 123.19 139.7 0)
			(uuid "054b072d-8198-460e-90cc-9fed3bb4cb7f")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Unlvld" input
			(at 123.19 171.45 0)
			(uuid "3d528d9d-56f1-4ba4-a524-34ef3419e3e0")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-D0" output
			(at 123.19 144.78 0)
			(uuid "2455e2b2-4a39-43b4-859a-d60e9178b88f")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-D1" output
			(at 123.19 147.32 0)
			(uuid "74159fa0-39a1-4efc-8b5b-6db1b39d81c9")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-D2" output
			(at 123.19 149.86 0)
			(uuid "6a4dbb80-647b-443b-9c1c-c34512732428")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-D3" output
			(at 123.19 152.4 0)
			(uuid "eb58e538-8e3c-438f-8068-1c2166f943be")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "ATT-LE" output
			(at 123.19 154.94 0)
			(uuid "17594167-abbe-412d-9c17-195a4eec285b")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "DAC" output
			(at 123.19 113.03 0)
			(uuid "8c5a48cb-c3a1-4dd3-90c6-7b01ed3fc72b")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Int-Sel" output
			(at 123.19 173.99 0)
			(uuid "50f3d24e-8525-4439-b253-27c6c58d6f90")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Ext-Sel" output
			(at 123.19 176.53 0)
			(uuid "913fd0a4-2cb0-4163-b0cc-d4d646089cfa")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "DDS-Update" output
			(at 123.19 158.75 0)
			(uuid "9861f3f9-f9fe-4d65-9d41-6b01ecfd3952")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FP-LED-red" output
			(at 123.19 179.07 0)
			(uuid "407c89a3-8424-48c6-9efb-dcb0a5f8d06e")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "FP-LED-grn" output
			(at 123.19 181.61 0)
			(uuid "ddb30a2e-2f96-4af4-b0b1-b5375b9debf2")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Bypass" output
			(at 123.19 142.24 0)
			(uuid "dacf38ec-b75a-4667-9b3d-ab6576c28472")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "3")
				)
			)
		)
	)
	(sheet
		(at 91.44 45.72)
		(size 31.75 38.1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005dbf7117")
		(property "Sheetname" "Reference"
			(at 91.44 45.0084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "reference.sch"
			(at 91.44 84.4046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "SLE" input
			(at 91.44 69.85 180)
			(uuid "a520a528-809e-480d-8ee2-5023d217c844")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "SDA" input
			(at 91.44 64.77 180)
			(uuid "2208c88a-eee4-4ba8-828a-43264bf422e8")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "SCK" input
			(at 91.44 67.31 180)
			(uuid "0afeb3ab-c9dd-4aa4-b64a-f729e64befba")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Ref-Lock" output
			(at 123.19 80.01 0)
			(uuid "d550b5ef-426a-4ecb-8e6d-af6deff36c89")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "Ext-Ref" input
			(at 91.44 49.53 180)
			(uuid "852c358f-42b5-4e74-a030-5b7b1d455199")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Ref-Out" output
			(at 123.19 49.53 0)
			(uuid "94e0652e-16c0-4970-b0fa-67a865c0172f")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify right)
			)
		)
		(pin "CS-Ref-PLL" input
			(at 91.44 72.39 180)
			(uuid "196abc02-086a-45c6-a192-31a83e358bfc")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Int-Sel" input
			(at 91.44 77.47 180)
			(uuid "c79bd84c-1b86-4673-865d-0e07ffd11432")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "Ext-Sel" input
			(at 91.44 80.01 180)
			(uuid "9759523b-ad3e-4bb9-a6e3-149e2e287006")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "2")
				)
			)
		)
	)
	(sheet
		(at 91.44 210.82)
		(size 31.75 38.1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(stroke
			(width 0)
			(type solid)
		)
		(fill
			(color 0 0 0 0.0000)
		)
		(uuid "00000000-0000-0000-0000-00005dcd3cb2")
		(property "Sheetname" "Power Supply"
			(at 91.44 210.1084 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left bottom)
			)
		)
		(property "Sheetfile" "supply.sch"
			(at 91.44 249.5046 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left top)
			)
		)
		(pin "V-Sply-A" passive
			(at 91.44 226.06 180)
			(uuid "77aa15b0-95e9-4808-b6ea-7d8232f8d20a")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(pin "V-Sply-D" passive
			(at 91.44 233.68 180)
			(uuid "b8f8de9a-c16f-4d93-9252-3ece85976352")
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(instances
			(project "Hauptplatine"
				(path "/66a23827-23a5-448f-8952-fd4fbae780a4"
					(page "4")
				)
			)
		)
	)
	(sheet_instances
		(path "/"
			(page "1")
		)
	)
	(embedded_fonts no)
)
