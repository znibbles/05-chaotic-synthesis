{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 300.0, 888.0, 515.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 404.0, 84.0, 22.0 ],
					"text" : "mc.clip~ -1. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 126.5, 329.0, 87.0, 22.0 ],
					"text" : "deviate 0.1 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 215.0, 60.0, 22.0 ],
					"text" : "mc.*~ 0.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 34.0, 152.0, 96.0, 22.0 ],
					"text" : "mc.receive~ env"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 554.0, 476.0, 84.0, 22.0 ],
					"text" : "mc.send~ env"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 567.0, 36.333335876464844, 91.0, 22.0 ],
					"text" : "deviate $1 0.75"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-4",
					"maxclass" : "slider",
					"mult" : 0.25,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 567.0, 11.333335876464844, 182.0, 19.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.5, 367.5, 60.0, 22.0 ],
					"text" : "mc.*~ 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.0, 141.0, 101.0, 22.0 ],
					"text" : "deviate 200 800"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.5, 247.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-82",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.5, 215.0, 182.0, 19.0 ],
					"size" : 500.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.5, 279.0, 126.0, 22.0 ],
					"text" : "deviate $1 cutoff 1000"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-31",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.5, 145.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-29",
					"maxclass" : "slider",
					"mult" : 0.3,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.5, 113.0, 182.0, 19.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.5, 177.0, 154.0, 22.0 ],
					"text" : "deviate $1 resonance 0.7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 367.5, 108.0, 22.0 ],
					"text" : "mc.lores~ 500. 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 219.0, 183.0, 101.0, 22.0 ],
					"text" : "deviate 100 4000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 144.0, 215.0, 75.0, 22.0 ],
					"text" : "mc.+~ 4000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 144.0, 159.0, 73.0, 22.0 ],
					"text" : "mc.*~ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 144.0, 113.0, 153.0, 22.0 ],
					"text" : "mc.phasor~ 1 @chans 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 299.5, 102.0, 22.0 ],
					"text" : "mc.tapout~ 3000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "tapconnect" ],
					"patching_rect" : [ 15.0, 253.5, 94.0, 22.0 ],
					"text" : "mc.tapin~ 5000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.0, 386.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.0, 416.0, 138.0, 22.0 ],
					"text" : "sprintf \"setvalue %d %s\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 615.0, 182.333343505859375, 67.0, 22.0 ],
					"text" : "route voice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.0, 223.0, 61.0, 22.0 ],
					"text" : "lineout $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 567.0, 102.333335876464844, 55.0, 22.0 ],
					"text" : "mc.>~ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 554.0, 183.333343505859375, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"chans" : 8,
					"data" : [ 						{
							"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 95.744680851063833, 0.893333333333333, 0, 0.6, 95.744680851063833, 0.053333333333333, 0, 0.0, 329.787234042553166, 0.0, 0, 0.4 ]
						}
, 						{
							"addpoints_with_curve" : [ 21.276595744680851, 0.0, 0, 0.0, 164.893617021276583, 0.733333333333333, 0, -0.8, 329.787234042553166, 0.0, 0, -0.7 ]
						}
, 						{
							"addpoints_with_curve" : [ 5.319148936170213, 0.011111145019531, 0, 0.0, 531.914893617021221, 0.891111145019531, 0, 0.595, 569.148936170212778, 0.0, 0, 0.65, 659.574468085106332, 0.584444478352865, 0, 0.5, 707.446808510638334, 0.0, 0, -0.25 ]
						}
, 						{
							"addpoints_with_curve" : [ 5.319148936170213, 0.0, 0, 0.0, 26.595744680851062, 1.0, 0, 0.0, 1000.0, 0.0, 0, -0.695 ]
						}
, 						{
							"addpoints_with_curve" : [ 5.319148936170213, 0.0, 0, 0.0, 180.851063829787222, 0.997777811686198, 0, -0.55, 457.446808510638277, 0.0, 0, -0.75, 569.148936170212778, 0.451111145019531, 0, 0.5, 882.978723404255334, 0.0, 0, -0.8 ]
						}
, 						{
							"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 101.063829787234042, 1.0, 0, 0.65, 180.851063829787222, 0.0, 0, -0.6, 340.425531914893611, 0.397777811686198, 0, 0.75, 558.510638297872333, 0.0, 0, -0.75 ]
						}
, 						{
							"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 909.574468085106332, 0.904444478352865, 0, 0.845, 1000.0, 0.0, 0, 0.0 ]
						}
, 						{
							"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 521.27659574468089, 0.957777811686198, 0, 0.0, 1000.0, 0.0, 0, 0.0 ]
						}
 ],
					"displaychan" : 8,
					"id" : "obj-32",
					"maxclass" : "mc.function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "", "", "bang", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 554.0, 253.5, 200.0, 118.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 567.0, 143.333343505859375, 62.0, 22.0 ],
					"text" : "mc.edge~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 567.0, 65.333335876464844, 136.0, 22.0 ],
					"text" : "mc.rand~ 0.5 @chans 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.0, 63.833335876464844, 87.0, 22.0 ],
					"text" : "deviate 200 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.5, 63.833335876464844, 87.0, 22.0 ],
					"text" : "deviate 300 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 63.833335876464844, 87.0, 22.0 ],
					"text" : "deviate 100 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 213.5, 373.0, 108.0, 22.0 ],
					"text" : "mc.sig~ @chans 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.5, 338.0, 118.0, 22.0 ],
					"text" : "spreadinclusive 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 436.0, 144.0, 22.0 ],
					"text" : "mc.mixdown~ @autogain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 465.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 372.333343505859375, 11.333335876464844, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-15", "live.numbox", "float", 700.0, 5, "obj-16", "live.numbox", "float", 790.0, 5, "obj-21", "live.numbox", "float", 142.0, 5, "obj-32", "mc.function", "target", 1, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 95.744680851063833, 0.893333333333333, 0, 0.6, 8, "obj-32", "mc.function", "add_with_curve", 95.744680851063833, 0.053333333333333, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 329.787234042553166, 0.0, 0, 0.4, 5, "obj-32", "mc.function", "target", 2, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 21.276595744680851, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 164.893617021276583, 0.733333333333333, 0, -0.8, 8, "obj-32", "mc.function", "add_with_curve", 329.787234042553166, 0.0, 0, -0.7, 5, "obj-32", "mc.function", "target", 3, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.011111145019531, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 531.914893617021221, 0.891111145019531, 0, 0.595, 8, "obj-32", "mc.function", "add_with_curve", 569.148936170212778, 0.0, 0, 0.65, 8, "obj-32", "mc.function", "add_with_curve", 659.574468085106332, 0.584444478352865, 0, 0.5, 8, "obj-32", "mc.function", "add_with_curve", 707.446808510638334, 0.0, 0, -0.25, 5, "obj-32", "mc.function", "target", 4, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 26.595744680851062, 1.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, -0.695, 5, "obj-32", "mc.function", "target", 5, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 180.851063829787222, 0.997777811686198, 0, -0.55, 8, "obj-32", "mc.function", "add_with_curve", 457.446808510638277, 0.0, 0, -0.75, 8, "obj-32", "mc.function", "add_with_curve", 569.148936170212778, 0.451111145019531, 0, 0.5, 8, "obj-32", "mc.function", "add_with_curve", 882.978723404255334, 0.0, 0, -0.8, 5, "obj-32", "mc.function", "target", 6, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 101.063829787234042, 1.0, 0, 0.65, 8, "obj-32", "mc.function", "add_with_curve", 180.851063829787222, 0.0, 0, -0.6, 8, "obj-32", "mc.function", "add_with_curve", 340.425531914893611, 0.397777811686198, 0, 0.75, 8, "obj-32", "mc.function", "add_with_curve", 558.510638297872333, 0.0, 0, -0.75, 5, "obj-32", "mc.function", "target", 7, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 909.574468085106332, 0.904444478352865, 0, 0.845, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "obj-32", "mc.function", "target", 8, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 521.27659574468089, 0.957777811686198, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "obj-32", "mc.function", "domain", 1000.0, 6, "obj-32", "mc.function", "range", 0.0, 1.0, 5, "obj-32", "mc.function", "mode", 1, 5, "obj-29", "slider", "float", 0.855912029743195, 5, "obj-31", "flonum", "float", 0.213978007435799, 5, "obj-82", "slider", "float", 307.894378662109375, 5, "obj-81", "flonum", "float", 307.894378662109375, 5, "obj-4", "slider", "float", 0.574390590190887 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-15", "live.numbox", "float", 1102.3621826171875, 5, "obj-16", "live.numbox", "float", 250.0, 5, "obj-21", "live.numbox", "float", 300.0, 5, "obj-32", "mc.function", "target", 1, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 95.744680851063833, 0.893333333333333, 0, 0.6, 8, "obj-32", "mc.function", "add_with_curve", 95.744680851063833, 0.053333333333333, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 329.787234042553166, 0.0, 0, 0.4, 5, "obj-32", "mc.function", "target", 2, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 21.276595744680851, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 164.893617021276583, 0.733333333333333, 0, -0.8, 8, "obj-32", "mc.function", "add_with_curve", 329.787234042553166, 0.0, 0, -0.7, 5, "obj-32", "mc.function", "target", 3, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.011111145019531, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 531.914893617021221, 0.891111145019531, 0, 0.595, 8, "obj-32", "mc.function", "add_with_curve", 569.148936170212778, 0.0, 0, 0.65, 8, "obj-32", "mc.function", "add_with_curve", 659.574468085106332, 0.584444478352865, 0, 0.5, 8, "obj-32", "mc.function", "add_with_curve", 707.446808510638334, 0.0, 0, -0.25, 5, "obj-32", "mc.function", "target", 4, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 26.595744680851062, 1.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, -0.695, 5, "obj-32", "mc.function", "target", 5, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 5.319148936170213, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 180.851063829787222, 0.997777811686198, 0, -0.55, 8, "obj-32", "mc.function", "add_with_curve", 457.446808510638277, 0.0, 0, -0.75, 8, "obj-32", "mc.function", "add_with_curve", 569.148936170212778, 0.451111145019531, 0, 0.5, 8, "obj-32", "mc.function", "add_with_curve", 882.978723404255334, 0.0, 0, -0.8, 5, "obj-32", "mc.function", "target", 6, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 101.063829787234042, 1.0, 0, 0.65, 8, "obj-32", "mc.function", "add_with_curve", 180.851063829787222, 0.0, 0, -0.6, 8, "obj-32", "mc.function", "add_with_curve", 340.425531914893611, 0.397777811686198, 0, 0.75, 8, "obj-32", "mc.function", "add_with_curve", 558.510638297872333, 0.0, 0, -0.75, 5, "obj-32", "mc.function", "target", 7, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 909.574468085106332, 0.904444478352865, 0, 0.845, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "obj-32", "mc.function", "target", 8, 4, "obj-32", "mc.function", "clear", 8, "obj-32", "mc.function", "add_with_curve", 0.0, 0.0, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 521.27659574468089, 0.957777811686198, 0, 0.0, 8, "obj-32", "mc.function", "add_with_curve", 1000.0, 0.0, 0, 0.0, 5, "obj-32", "mc.function", "domain", 1000.0, 6, "obj-32", "mc.function", "range", 0.0, 1.0, 5, "obj-32", "mc.function", "mode", 1, 5, "obj-29", "slider", "float", 0.945923209190369, 5, "obj-31", "flonum", "float", 0.236480802297592, 5, "obj-82", "slider", "float", 410.0938720703125, 5, "obj-81", "flonum", "float", 410.0938720703125, 5, "obj-4", "slider", "float", 0.834967792034149 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "", "" ],
					"patching_rect" : [ 554.0, 443.0, 118.0, 21.0 ],
					"text" : "mc.curve~ @chans 8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 187.0, 38.0, 21.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 15.0, 36.333335876464844, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 1,
							"parameter_longname" : "live.numbox[4]",
							"parameter_mmax" : 20000.0,
							"parameter_shortname" : "live.numbox"
						}

					}
,
					"varname" : "live.numbox[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 229.0, 36.333335876464844, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 1,
							"parameter_longname" : "live.numbox[3]",
							"parameter_mmax" : 20000.0,
							"parameter_shortname" : "live.numbox"
						}

					}
,
					"varname" : "live.numbox[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 121.5, 36.333335876464844, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 1,
							"parameter_longname" : "live.numbox[2]",
							"parameter_mmax" : 20000.0,
							"parameter_shortname" : "live.numbox"
						}

					}
,
					"varname" : "live.numbox[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 121.5, 11.333335876464844, 102.0, 20.0 ],
					"text" : "mod amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 11.333335999999999, 102.0, 20.0 ],
					"text" : "mod frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 229.0, 11.333335876464844, 99.000015258789062, 20.0 ],
					"text" : "carrier frequency"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 8,
								"minor" : 0,
								"revision" : 0,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 646.0, 305.0, 600.0, 450.0 ],
							"bglocked" : 0,
							"openinpresentation" : 0,
							"default_fontsize" : 12.0,
							"default_fontface" : 0,
							"default_fontname" : "Arial",
							"gridonopen" : 1,
							"gridsize" : [ 15.0, 15.0 ],
							"gridsnaponopen" : 1,
							"objectsnaponopen" : 1,
							"statusbarvisible" : 2,
							"toolbarvisible" : 1,
							"lefttoolbarpinned" : 0,
							"toptoolbarpinned" : 0,
							"righttoolbarpinned" : 0,
							"bottomtoolbarpinned" : 0,
							"toolbars_unpinned_last_save" : 0,
							"tallnewobj" : 0,
							"boxanimatetime" : 200,
							"enablehscroll" : 1,
							"enablevscroll" : 1,
							"devicewidth" : 0.0,
							"description" : "",
							"digest" : "",
							"tags" : "",
							"style" : "",
							"subpatcher_template" : "",
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "scale 0 1 -1 1",
										"patching_rect" : [ 97.5, 79.0, 83.0, 22.0 ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-10",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "param bipolar",
										"patching_rect" : [ 4.0, 79.0, 84.0, 22.0 ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-3",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "switch",
										"patching_rect" : [ 85.0, 120.0, 144.5, 22.0 ],
										"numinlets" : 3,
										"numoutlets" : 1,
										"id" : "obj-2",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "+",
										"patching_rect" : [ 85.0, 271.0, 282.5, 22.0 ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-18",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 3",
										"patching_rect" : [ 348.5, 15.0, 27.0, 20.0 ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-14",
										"fontsize" : 10.0,
										"outlettype" : [ "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 2",
										"patching_rect" : [ 118.0, 242.0, 33.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "obj-9",
										"fontsize" : 10.0,
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 2",
										"patching_rect" : [ 239.5, 15.0, 27.0, 20.0 ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-8",
										"fontsize" : 10.0,
										"outlettype" : [ "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "*",
										"patching_rect" : [ 85.0, 165.0, 173.5, 22.0 ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-5",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "cycle",
										"patching_rect" : [ 85.0, 319.0, 33.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 2,
										"id" : "obj-11",
										"fontsize" : 10.0,
										"outlettype" : [ "", "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "phasor",
										"patching_rect" : [ 124.0, 39.0, 41.0, 20.0 ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-7",
										"fontsize" : 10.0,
										"outlettype" : [ "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "sinh",
										"patching_rect" : [ 85.0, 210.0, 29.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"id" : "obj-6",
										"fontsize" : 10.0,
										"outlettype" : [ "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 124.0, 15.0, 27.0, 20.0 ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-1",
										"fontsize" : 10.0,
										"outlettype" : [ "" ],
										"fontname" : "Arial"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 85.0, 368.0, 33.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "obj-4",
										"fontsize" : 10.0,
										"fontname" : "Arial"
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-8", 0 ],
										"destination" : [ "obj-5", 1 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-7", 0 ],
										"destination" : [ "obj-2", 2 ],
										"midpoints" : [ 133.5, 60.0, 220.0, 60.0 ],
										"order" : 0
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-7", 0 ],
										"destination" : [ "obj-10", 0 ],
										"order" : 1
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-6", 0 ],
										"destination" : [ "obj-9", 0 ],
										"order" : 0
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-6", 0 ],
										"destination" : [ "obj-18", 0 ],
										"order" : 1
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-6", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-3", 0 ],
										"destination" : [ "obj-2", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-2", 0 ],
										"destination" : [ "obj-5", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-18", 0 ],
										"destination" : [ "obj-11", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-14", 0 ],
										"destination" : [ "obj-18", 1 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-11", 0 ],
										"destination" : [ "obj-4", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-10", 0 ],
										"destination" : [ "obj-2", 1 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-7", 0 ]
									}

								}
 ],
							"editing_bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
						}

					}
,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 15.0, 113.0, 112.0, 22.0 ],
					"text" : "mc.gen~ @chans 8"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"order" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 136.0, 398.5, 9.0, 398.5, 9.0, 239.5, 24.5, 239.5 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-15" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-16" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-21" : [ "live.numbox[4]", "live.numbox", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
