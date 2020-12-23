{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 74.0, 90.0, 1469.0, 843.0 ],
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
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 740.0, 291.0, 244.0, 22.0 ],
					"text" : "window size 20 60 1023 768, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 740.0, 424.0, 182.0, 22.0 ],
					"text" : "window size 20 60 922 728"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 327.0, 94.0, 22.0 ],
					"text" : "window getsize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 740.0, 369.0, 71.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 74.0, 116.0, 1469.0, 817.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 5.0, 5.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Rotating Clock Divider.maxpat",
									"numinlets" : 4,
									"numoutlets" : 8,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 685.0, 9.5, 417.0, 214.0 ],
									"varname" : "bp.Rotating Clock Divider",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 763.0, 66.0, 23.0 ],
									"text" : "dac~ 9 10"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 778.0, 372.0, 204.0, 55.0 ],
									"text" : "This Gate Sequencer adds the second Oscillator",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-14",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 438.0, 722.0, 508.0, 116.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 974.554688000000056, 1097.0, 42.0, 22.0 ],
													"text" : "* 0.01"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 916.554688000000056, 1137.0, 77.0, 22.0 ],
													"text" : "pak 100. 80."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 665.0, 1213.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 644.0, 1150.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 974.554688000000056, 1042.505615000000034, 44.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 340.067993000000001, 44.0, 44.0, 18.0 ],
													"text" : "Gate %",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"activeslidercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"annotation" : "",
													"appearance" : 1,
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"id" : "obj-9",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 974.554688000000056, 1069.401000999999951, 36.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 340.067993000000001, 70.335480000000004, 45.404167000000001, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_initial" : [ 95 ],
															"parameter_longname" : "gatepct[1]",
															"parameter_mmax" : 100.0,
															"parameter_shortname" : "gatepct",
															"parameter_type" : 0,
															"parameter_unitstyle" : 5
														}

													}
,
													"textcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"tricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"varname" : "gatepct"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 916.554688000000056, 1188.0, 50.5, 22.0 ],
													"text" : "* 0.95"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 916.554688000000056, 957.0, 137.0, 22.0 ],
													"text" : "translate notevalues ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 105.0, 321.0, 20.0 ],
													"text" : "## A sequencer that generates a pattern of gate signals ##"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 509.645996000000025, 1342.812744000000066, 33.0, 22.0 ],
													"text" : "sig~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-30",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 509.645996000000025, 1294.812744000000066, 32.5, 22.0 ],
													"text" : "5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-27",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 556.554688000000056, 1294.812744000000066, 32.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 556.554688000000056, 1258.812744000000066, 96.0, 22.0 ],
													"text" : "delay 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 556.554688000000056, 1198.812744000000066, 36.0, 22.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 411.214904999999987, 1342.812744000000066, 32.5, 22.0 ],
													"text" : "!= 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 521.395995999999968, 856.812743999999952, 32.5, 22.0 ],
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"annotation" : "Sets number of steps in the sequence.",
													"id" : "obj-95",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 521.395995999999968, 778.50268600000004, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 190.861679000000009, 43.0, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 16 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Steps[1]",
															"parameter_mmax" : 32.0,
															"parameter_mmin" : 1.0,
															"parameter_shortname" : "Steps",
															"parameter_type" : 1,
															"parameter_unitstyle" : 0
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"varname" : "Steps"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-20",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 411.214904999999987, 1291.812744000000066, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 448.472168000000011, 20.0, 52.0, 14.764645 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "mute[2]",
															"parameter_mmax" : 1,
															"parameter_shortname" : "mute",
															"parameter_type" : 2
														}

													}
,
													"text" : "mute",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "mute",
													"varname" : "mute"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 224.008544999999998, 704.002807999999959, 32.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.008544999999998, 768.038208000000054, 166.757567999999992, 22.0 ],
													"text" : "switch 2 1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-139",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 224.008544999999998, 624.502563000000009, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 241.747162000000003, 70.335480000000004, 66.226546999999997, 14.764645 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "ClockSelect[1]",
															"parameter_mmax" : 1,
															"parameter_shortname" : "ClockSelect",
															"parameter_type" : 2
														}

													}
,
													"text" : "Transport",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "Trigger",
													"varname" : "ClockSelect"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-137",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 371.766113000000018, 618.031981999999971, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 371.766113000000018, 704.002807999999959, 95.0, 22.0 ],
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-136",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 371.766113000000018, 663.953979000000004, 47.0, 23.0 ],
													"text" : ">~ 2.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 411.214904999999987, 1380.592284999999947, 117.431090999999995, 22.0 ],
													"text" : "gate~ 1 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "signal output",
													"id" : "obj-132",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 411.214904999999987, 1434.592284999999947, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgstepcolor" : [ 1.0, 1.0, 1.0, 0.13 ],
													"bgstepcolor2" : [ 1.0, 1.0, 1.0, 0.07 ],
													"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"bordercolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
													"columns" : 32,
													"direction" : 0,
													"hbgcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-125",
													"marker_vertical" : 0,
													"matrixmode" : 1,
													"maxclass" : "live.grid",
													"numinlets" : 2,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 556.554688000000056, 1057.901000999999951, 177.0, 42.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 11.239623999999999, 49.0, 171.386841000000004, 36.100124000000001 ],
													"rounded" : 0.0,
													"rows" : 1,
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 3, 16, 8, 0, 4, 0, 4000, 8000, 12000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
															"parameter_initial_enable" : 1,
															"parameter_invisible" : 1,
															"parameter_longname" : "PatternGrid[1]",
															"parameter_shortname" : "PatternGrid",
															"parameter_type" : 3
														}

													}
,
													"spacing" : 0.0,
													"stepcolor" : [ 0.278431, 0.839216, 1.0, 0.72 ],
													"varname" : "PatternGrid"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 641.202881000000048, 676.202636999999982, 191.0, 20.0 ],
													"text" : "metro 4.0.0 @quantize 4.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 586.171143000000029, 639.202636999999982, 191.0, 20.0 ],
													"text" : "metro 2.0.0 @quantize 2.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 531.139404000000013, 604.202636999999982, 191.0, 20.0 ],
													"text" : "metro 1.0.0 @quantize 1.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 476.107544000000019, 648.031981999999971, 38.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 241.747162000000003, 43.0, 38.0, 18.0 ],
													"text" : "Reset",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"annotation" : "Determines the rate at which a step advances. Set in terms of metric values (eg: 1/8 = 1/8th note) Swing is only available at 1/8, 1/16 and 1/32 values. ",
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"hltcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-96",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 412.094238000000018, 63.260756999999998, 71.944457999999997, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 433.027831999999989, 46.0, 66.848502999999994, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "whole", "1/2", "1/4", "1/8", "1/16", "1/32", "--", "1/2 dotted", "1/4 dotted", "1/8 dotted", "1/16 dotted", "1/32 dotted", "--", "1/2 triplet", "1/4 triplet", "1/8 triplet", "1/16 triplet", "1/32 triplet" ],
															"parameter_initial" : [ 4.0 ],
															"parameter_initial_enable" : 1,
															"parameter_invisible" : 1,
															"parameter_longname" : "Pulse[2]",
															"parameter_mmax" : 17,
															"parameter_shortname" : "Pulse",
															"parameter_type" : 2
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Pulse"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-99",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 343.177489999999977, 63.260756999999998, 60.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 391.472168000000011, 44.0, 38.0, 18.0 ],
													"text" : "Pulse",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"activeslidercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"annotation" : "The Swing Amount field determines the percentage of swing applied.",
													"appearance" : 1,
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"id" : "obj-155",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 579.245604999999955, 318.477722000000028, 36.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 448.472168000000011, 70.335480000000004, 51.404167000000001, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_initial" : [ 50 ],
															"parameter_longname" : "Swing amount[1]",
															"parameter_mmax" : 100.0,
															"parameter_shortname" : "Swing amount",
															"parameter_type" : 0,
															"parameter_unitstyle" : 5
														}

													}
,
													"textcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"tricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"varname" : "swing amount"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.094118, 0.117647, 0.137255, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.7 ],
													"activetextoncolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"annotation" : "Turn on the Swing Switch to activate the Step Sequencer's internal swing function. Swing is disabled unless pulse is set to 1/8, 1/16 or 1/32 values.",
													"automation" : "off",
													"automationon" : "on",
													"bgcolor" : [ 0.094118, 0.117647, 0.137255, 0.0 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"focusbordercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"fontname" : "Arial Bold",
													"id" : "obj-157",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 477.566405999999972, 318.477722000000028, 56.0, 16.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 391.472168000000011, 70.335480000000004, 52.661620999999997, 14.973684 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "off", "on" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Swing enable[1]",
															"parameter_mmax" : 1,
															"parameter_modmax" : 1.0,
															"parameter_shortname" : "Swing enable",
															"parameter_type" : 2
														}

													}
,
													"text" : "Swing off",
													"texton" : "Swing on",
													"varname" : "swing switch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 477.566405999999972, 252.538712000000004, 67.0, 20.0 ],
													"text" : "routepass 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-133",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 746.396973000000003, 198.248795000000001, 47.0, 20.0 ],
													"text" : "route -1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-124",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 412.094238000000018, 152.248917000000006, 353.302733999999987, 20.0 ],
													"text" : "unpack i i i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 297.887329000000022, 477.435242000000017, 32.5, 20.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 297.887329000000022, 526.011413999999945, 300.358275999999989, 20.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-145",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 802.274658000000045, 394.910888999999997, 110.0, 24.0 ],
													"text" : "thanks, Darwin!"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 16,
														"data" : [ 															{
																"key" : 0,
																"value" : [ 1, 0, -1 ]
															}
, 															{
																"key" : 1,
																"value" : [ 4, 0, -1 ]
															}
, 															{
																"key" : 2,
																"value" : [ 7, 0, -1 ]
															}
, 															{
																"key" : 3,
																"value" : [ 10, 1, 2 ]
															}
, 															{
																"key" : 4,
																"value" : [ 13, 1, 1 ]
															}
, 															{
																"key" : 5,
																"value" : [ 16, 1, 0 ]
															}
, 															{
																"key" : 7,
																"value" : [ 3, 0, -1 ]
															}
, 															{
																"key" : 8,
																"value" : [ 6, 0, -1 ]
															}
, 															{
																"key" : 9,
																"value" : [ 9, 0, -1 ]
															}
, 															{
																"key" : 10,
																"value" : [ 12, 0, -1 ]
															}
, 															{
																"key" : 11,
																"value" : [ 15, 0, -1 ]
															}
, 															{
																"key" : 13,
																"value" : [ 5, 0, -1 ]
															}
, 															{
																"key" : 14,
																"value" : [ 8, 0, -1 ]
															}
, 															{
																"key" : 15,
																"value" : [ 11, 0, -1 ]
															}
, 															{
																"key" : 16,
																"value" : [ 14, 0, -1 ]
															}
, 															{
																"key" : 17,
																"value" : [ 17, 0, -1 ]
															}
 ]
													}
,
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 412.094238000000018, 113.708388999999997, 59.5, 20.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-299",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 579.245604999999955, 394.910888999999997, 214.151366999999993, 20.0 ],
													"saved_object_attributes" : 													{
														"filename" : "swingCalc.js",
														"parameter_enable" : 0
													}
,
													"text" : "js swingCalc.js"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-262",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 25.0, 95.0, 1058.0, 771.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 1,
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 226.625, 66.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-223",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"patching_rect" : [ 50.000003999999997, 655.415526999999997, 32.5, 18.0 ],
																	"text" : "b"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-215",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "clear" ],
																	"patching_rect" : [ 90.625, 505.0, 46.0, 18.0 ],
																	"text" : "t i clear"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-216",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.000003999999997, 577.0, 59.625, 18.0 ],
																	"text" : "buddy"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-217",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 552.0, 39.0, 18.0 ],
																	"text" : "% 480"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-218",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 529.0, 32.5, 18.0 ],
																	"text" : "* 60"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-219",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.000003999999997, 609.415526999999997, 120.5625, 18.0 ],
																	"text" : "pack 0 0 0. 0. 0 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-221",
																	"linecount" : 2,
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 100.0, 145.0, 29.0 ],
																	"text" : "metro @interval 5 ticks @quantize 5 ticks @active 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-222",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 9,
																	"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
																	"patching_rect" : [ 50.0, 140.0, 154.416672000000005, 18.0 ],
																	"text" : "transport"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-261",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.000003999999997, 696.415526999999997, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "int", "int" ],
																	"patching_rect" : [ 90.625, 463.0, 57.0, 18.0 ],
																	"text" : "change -1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 439.0, 59.0, 18.0 ],
																	"text" : "+ 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 415.0, 32.5, 18.0 ],
																	"text" : "* 8"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 391.0, 32.5, 18.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 8,
																	"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
																	"patching_rect" : [ 226.625, 140.0, 357.0, 18.0 ],
																	"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 130.625, 414.0, 32.5, 18.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 130.625, 391.0, 42.0, 18.0 ],
																	"text" : "zl sum"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 8,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 202.625, 367.0, 354.5, 18.0 ],
																	"text" : "pack 0 0 0 0 0 0 0 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 538.625, 343.0, 45.0, 18.0 ],
																	"text" : ">= 420."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 490.625, 343.0, 45.0, 18.0 ],
																	"text" : ">= 380."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 442.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 360."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 394.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 240."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 346.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 180."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 298.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 120."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 250.625, 343.0, 43.0, 18.0 ],
																	"text" : ">= 60."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 202.625, 343.0, 43.0, 18.0 ],
																	"text" : ">= 0."
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 4 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 7 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 6 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-215", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 1 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 0 ],
																	"midpoints" : [ 127.125, 549.5, 59.500003999999997, 549.5 ],
																	"source" : [ "obj-215", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-218", 0 ],
																	"source" : [ "obj-215", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 2 ],
																	"source" : [ "obj-216", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 0 ],
																	"source" : [ "obj-216", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 1 ],
																	"source" : [ "obj-217", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-217", 0 ],
																	"source" : [ "obj-218", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-223", 0 ],
																	"source" : [ "obj-219", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-222", 0 ],
																	"source" : [ "obj-221", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 404.125, 250.0 ],
																	"order" : 3,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 548.125, 250.0 ],
																	"order" : 0,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 500.125, 250.0 ],
																	"order" : 1,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"midpoints" : [ 76.427084000000008, 274.0, 100.125, 274.0 ],
																	"order" : 0,
																	"source" : [ "obj-222", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 0 ],
																	"source" : [ "obj-222", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 5 ],
																	"source" : [ "obj-222", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 4 ],
																	"source" : [ "obj-222", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 3 ],
																	"source" : [ "obj-222", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 1 ],
																	"order" : 1,
																	"source" : [ "obj-222", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 212.125, 250.0 ],
																	"order" : 7,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 260.125, 250.0 ],
																	"order" : 6,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 308.125, 250.0 ],
																	"order" : 5,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 356.125, 250.0 ],
																	"order" : 4,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 452.125, 250.0 ],
																	"order" : 2,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-261", 0 ],
																	"source" : [ "obj-223", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 1 ],
																	"source" : [ "obj-46", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 1 ],
																	"source" : [ "obj-46", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 1 ],
																	"source" : [ "obj-46", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-46", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"source" : [ "obj-46", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-46", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 1 ],
																	"source" : [ "obj-46", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 2 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 3 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 5 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
														"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
													}
,
													"patching_rect" : [ 579.245604999999955, 433.091552999999976, 79.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p swingamajig"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 412.094238000000018, 198.248795000000001, 71.944457999999997, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128nd", "128n" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_invisible" : 2,
															"parameter_longname" : "Max pulse[1]",
															"parameter_mmax" : 21,
															"parameter_shortname" : "Max pulse",
															"parameter_type" : 2
														}

													}
,
													"varname" : "max pulse[1]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-204",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 438.566405999999972, 380.011475000000019, 120.0, 20.0 ],
													"text" : "interval $1, quantize $1"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-205",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 438.566405999999972, 422.011475000000019, 88.0, 42.0 ],
													"text" : "metro @active 1 @interval 32n @quantize 32n"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-153",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 579.245604999999955, 253.538712000000004, 53.0, 20.0 ],
													"text" : "active $1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.6, 0.6, 0.6, 0.06 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"annotation" : "Sync",
													"bgcolor" : [ 0.6, 0.6, 0.6, 0.06 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"id" : "obj-28",
													"maxclass" : "live.button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 476.107544000000019, 789.50268600000004, 23.345901000000001, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 315.87634300000002, 70.335480000000004, 15.0, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "on" ],
															"parameter_exponent" : 2.0,
															"parameter_initial" : [ 50 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Attack[1]",
															"parameter_mmax" : 2000.0,
															"parameter_shortname" : "Attack",
															"parameter_type" : 0,
															"parameter_unitstyle" : 2
														}

													}
,
													"varname" : "Sync"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"annotation" : "Sync to downbeat every [n] measures.",
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"hltcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-89",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 476.107544000000019, 676.202636999999982, 41.144463000000002, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 287.156982000000028, 44.0, 42.438744, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "1", "2", "4" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_invisible" : 1,
															"parameter_linknames" : 1,
															"parameter_longname" : "Reset[1]",
															"parameter_mmax" : 3,
															"parameter_shortname" : "Reset",
															"parameter_type" : 2
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"tricolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Reset[1]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 476.107544000000019, 740.602538999999979, 184.095337000000001, 20.0 ],
													"text" : "switch 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-94",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 476.395996000000025, 876.502807999999959, 32.5, 20.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 431.395996000000025, 917.189574999999991, 109.0, 20.0 ],
													"text" : "counter 1 16"
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"bgcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"id" : "obj-97",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 58.033447000000002, 49.817898, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 5.044422, 42.0, 183.817261000000002, 50.618423 ],
													"proportion" : 0.39,
													"rounded" : 10,
													"varname" : "Display[2]"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-103",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 556.554688000000056, 980.189574999999991, 67.0, 20.0 ],
													"text" : "columns $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 19.582031000000001, 134.01147499999999, 58.0, 22.0 ],
													"restore" : 													{
														"ClockSelect" : [ 0.0 ],
														"PatternGrid" : [ 3, 32, 1, 0, 17, 0, 2000, 3000, 4000, 7000, 8000, 10000, 12000, 14000, 16000, 18000, 21000, 23000, 24000, 27000, 28000, 30000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
														"Pulse" : [ 4.0 ],
														"Reset[1]" : [ 0.0 ],
														"Steps" : [ 32.0 ],
														"Sync" : [ 0.0 ],
														"gatepct" : [ 95.0 ],
														"max pulse[1]" : [ 13.0 ],
														"mute" : [ 0.0 ],
														"swing amount" : [ 50.0 ],
														"swing switch" : [ 1.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u525003646"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 359.766113000000018, 1438.592284999999947, 31.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 97.0, 31.0, 17.0 ],
													"text" : "Gate",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 371.766113000000018, 590.89538600000003, 41.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 0.0, 41.0, 17.0 ],
													"text" : "Trigger",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 82.918944999999994, 56.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 19.0, 56.0, 17.0 ],
													"text" : "GATE SEQ",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 76.626380999999995, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 37.0, 525.0, 60.338158 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-10",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.852829, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 17.0, 525.0, 80.338158000000007 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 165.079284999999999, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 525.0, 133.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 1 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-204", 0 ],
													"order" : 1,
													"source" : [ "obj-120", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 448.066466999999989, 231.624390000000005, 926.054688000000056, 231.624390000000005 ],
													"order" : 0,
													"source" : [ "obj-120", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"order" : 1,
													"source" : [ "obj-124", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"source" : [ "obj-124", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-124", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 0 ],
													"order" : 0,
													"source" : [ "obj-124", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-299", 1 ],
													"source" : [ "obj-133", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-155", 0 ],
													"order" : 0,
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"order" : 1,
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-299", 0 ],
													"source" : [ "obj-155", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"midpoints" : [ 487.066405999999972, 361.456420999999978, 307.387329000000022, 361.456420999999978 ],
													"source" : [ "obj-157", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-205", 0 ],
													"source" : [ "obj-204", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 1 ],
													"source" : [ "obj-205", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 566.054688000000056, 1240.312744000000066, 519.145995999999968, 1240.312744000000066 ],
													"order" : 2,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 3 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 2 ],
													"source" : [ "obj-262", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-262", 0 ],
													"source" : [ "obj-299", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 2 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 1 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 2 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"midpoints" : [ 530.895995999999968, 901.001160000000027, 566.054688000000056, 901.001160000000027 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 4 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 1 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 2 ],
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 693.0, 439.0, 508.0, 116.0 ],
									"varname" : "GateSeq[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 263.0, 270.0, 508.0, 116.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 974.554688000000056, 1097.0, 42.0, 22.0 ],
													"text" : "* 0.01"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 916.554688000000056, 1137.0, 77.0, 22.0 ],
													"text" : "pak 100. 80."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 665.0, 1213.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 644.0, 1150.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 974.554688000000056, 1042.505615000000034, 44.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 340.067993000000001, 44.0, 44.0, 18.0 ],
													"text" : "Gate %",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"activeslidercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"annotation" : "",
													"appearance" : 1,
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"id" : "obj-9",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 974.554688000000056, 1069.401000999999951, 36.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 340.067993000000001, 70.335480000000004, 45.404167000000001, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_initial" : [ 95 ],
															"parameter_longname" : "gatepct",
															"parameter_mmax" : 100.0,
															"parameter_shortname" : "gatepct",
															"parameter_type" : 0,
															"parameter_unitstyle" : 5
														}

													}
,
													"textcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"tricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"varname" : "gatepct"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 916.554688000000056, 1188.0, 50.5, 22.0 ],
													"text" : "* 0.95"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 916.554688000000056, 957.0, 137.0, 22.0 ],
													"text" : "translate notevalues ms"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 105.0, 321.0, 20.0 ],
													"text" : "## A sequencer that generates a pattern of gate signals ##"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 509.645996000000025, 1342.812744000000066, 33.0, 22.0 ],
													"text" : "sig~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-30",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 509.645996000000025, 1294.812744000000066, 32.5, 22.0 ],
													"text" : "5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-27",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 556.554688000000056, 1294.812744000000066, 32.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 556.554688000000056, 1258.812744000000066, 96.0, 22.0 ],
													"text" : "delay 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 556.554688000000056, 1198.812744000000066, 36.0, 22.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 411.214904999999987, 1342.812744000000066, 32.5, 22.0 ],
													"text" : "!= 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 521.395995999999968, 856.812743999999952, 32.5, 22.0 ],
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"activedialcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activeneedlecolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"annotation" : "Sets number of steps in the sequence.",
													"id" : "obj-95",
													"maxclass" : "live.dial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 521.395995999999968, 778.50268600000004, 44.0, 48.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 190.861679000000009, 43.0, 44.0, 48.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 16 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Steps",
															"parameter_mmax" : 32.0,
															"parameter_mmin" : 1.0,
															"parameter_shortname" : "Steps",
															"parameter_type" : 1,
															"parameter_unitstyle" : 0
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"varname" : "Steps"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-20",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 411.214904999999987, 1291.812744000000066, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 448.472168000000011, 20.0, 52.0, 14.764645 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "mute[1]",
															"parameter_mmax" : 1,
															"parameter_shortname" : "mute",
															"parameter_type" : 2
														}

													}
,
													"text" : "mute",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "mute",
													"varname" : "mute"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 224.008544999999998, 704.002807999999959, 32.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.008544999999998, 768.038208000000054, 166.757567999999992, 22.0 ],
													"text" : "switch 2 1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-139",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 224.008544999999998, 624.502563000000009, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 241.747162000000003, 70.335480000000004, 66.226546999999997, 14.764645 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "ClockSelect",
															"parameter_mmax" : 1,
															"parameter_shortname" : "ClockSelect",
															"parameter_type" : 2
														}

													}
,
													"text" : "Transport",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "Trigger",
													"varname" : "ClockSelect"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-137",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 371.766113000000018, 618.031981999999971, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 371.766113000000018, 704.002807999999959, 95.0, 22.0 ],
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-136",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 371.766113000000018, 663.953979000000004, 47.0, 23.0 ],
													"text" : ">~ 2.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 411.214904999999987, 1380.592284999999947, 117.431090999999995, 22.0 ],
													"text" : "gate~ 1 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "signal output",
													"id" : "obj-132",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 411.214904999999987, 1434.592284999999947, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgstepcolor" : [ 1.0, 1.0, 1.0, 0.13 ],
													"bgstepcolor2" : [ 1.0, 1.0, 1.0, 0.07 ],
													"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"bordercolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
													"columns" : 15,
													"direction" : 0,
													"hbgcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-125",
													"marker_vertical" : 0,
													"matrixmode" : 1,
													"maxclass" : "live.grid",
													"numinlets" : 2,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 556.554688000000056, 1057.901000999999951, 177.0, 42.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 11.239623999999999, 49.0, 171.386841000000004, 36.100124000000001 ],
													"rounded" : 0.0,
													"rows" : 1,
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 3, 16, 8, 0, 4, 0, 4000, 8000, 12000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
															"parameter_initial_enable" : 1,
															"parameter_invisible" : 1,
															"parameter_longname" : "PatternGrid",
															"parameter_shortname" : "PatternGrid",
															"parameter_type" : 3
														}

													}
,
													"spacing" : 0.0,
													"stepcolor" : [ 0.278431, 0.839216, 1.0, 0.72 ],
													"varname" : "PatternGrid"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 641.202881000000048, 676.202636999999982, 191.0, 20.0 ],
													"text" : "metro 4.0.0 @quantize 4.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 586.171143000000029, 639.202636999999982, 191.0, 20.0 ],
													"text" : "metro 2.0.0 @quantize 2.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 531.139404000000013, 604.202636999999982, 191.0, 20.0 ],
													"text" : "metro 1.0.0 @quantize 1.0.0 @active 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 476.107544000000019, 648.031981999999971, 38.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 241.747162000000003, 43.0, 38.0, 18.0 ],
													"text" : "Reset",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"annotation" : "Determines the rate at which a step advances. Set in terms of metric values (eg: 1/8 = 1/8th note) Swing is only available at 1/8, 1/16 and 1/32 values. ",
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"hltcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-96",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 412.094238000000018, 63.260756999999998, 71.944457999999997, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 433.027831999999989, 46.0, 66.848502999999994, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "whole", "1/2", "1/4", "1/8", "1/16", "1/32", "--", "1/2 dotted", "1/4 dotted", "1/8 dotted", "1/16 dotted", "1/32 dotted", "--", "1/2 triplet", "1/4 triplet", "1/8 triplet", "1/16 triplet", "1/32 triplet" ],
															"parameter_initial" : [ 4.0 ],
															"parameter_initial_enable" : 1,
															"parameter_invisible" : 1,
															"parameter_longname" : "Pulse[1]",
															"parameter_mmax" : 17,
															"parameter_shortname" : "Pulse",
															"parameter_type" : 2
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Pulse"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-99",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 343.177489999999977, 63.260756999999998, 60.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 391.472168000000011, 44.0, 38.0, 18.0 ],
													"text" : "Pulse",
													"textcolor" : [ 1.0, 1.0, 1.0, 0.7 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"activeslidercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"annotation" : "The Swing Amount field determines the percentage of swing applied.",
													"appearance" : 1,
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.3 ],
													"id" : "obj-155",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 579.245604999999955, 318.477722000000028, 36.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 448.472168000000011, 70.335480000000004, 51.404167000000001, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_initial" : [ 50 ],
															"parameter_longname" : "Swing amount",
															"parameter_mmax" : 100.0,
															"parameter_shortname" : "Swing amount",
															"parameter_type" : 0,
															"parameter_unitstyle" : 5
														}

													}
,
													"textcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"tricolor2" : [ 1.0, 1.0, 1.0, 0.301961 ],
													"varname" : "swing amount"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.094118, 0.117647, 0.137255, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.7 ],
													"activetextoncolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"annotation" : "Turn on the Swing Switch to activate the Step Sequencer's internal swing function. Swing is disabled unless pulse is set to 1/8, 1/16 or 1/32 values.",
													"automation" : "off",
													"automationon" : "on",
													"bgcolor" : [ 0.094118, 0.117647, 0.137255, 0.0 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"focusbordercolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"fontname" : "Arial Bold",
													"id" : "obj-157",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 477.566405999999972, 318.477722000000028, 56.0, 16.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 391.472168000000011, 70.335480000000004, 52.661620999999997, 14.973684 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "off", "on" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Swing enable",
															"parameter_mmax" : 1,
															"parameter_modmax" : 1.0,
															"parameter_shortname" : "Swing enable",
															"parameter_type" : 2
														}

													}
,
													"text" : "Swing off",
													"texton" : "Swing on",
													"varname" : "swing switch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 477.566405999999972, 252.538712000000004, 67.0, 20.0 ],
													"text" : "routepass 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-133",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 746.396973000000003, 198.248795000000001, 47.0, 20.0 ],
													"text" : "route -1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-124",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 412.094238000000018, 152.248917000000006, 353.302733999999987, 20.0 ],
													"text" : "unpack i i i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 297.887329000000022, 477.435242000000017, 32.5, 20.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 297.887329000000022, 526.011413999999945, 300.358275999999989, 20.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-145",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 802.274658000000045, 394.910888999999997, 110.0, 24.0 ],
													"text" : "thanks, Darwin!"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 16,
														"data" : [ 															{
																"key" : 0,
																"value" : [ 1, 0, -1 ]
															}
, 															{
																"key" : 1,
																"value" : [ 4, 0, -1 ]
															}
, 															{
																"key" : 2,
																"value" : [ 7, 0, -1 ]
															}
, 															{
																"key" : 3,
																"value" : [ 10, 1, 2 ]
															}
, 															{
																"key" : 4,
																"value" : [ 13, 1, 1 ]
															}
, 															{
																"key" : 5,
																"value" : [ 16, 1, 0 ]
															}
, 															{
																"key" : 7,
																"value" : [ 3, 0, -1 ]
															}
, 															{
																"key" : 8,
																"value" : [ 6, 0, -1 ]
															}
, 															{
																"key" : 9,
																"value" : [ 9, 0, -1 ]
															}
, 															{
																"key" : 10,
																"value" : [ 12, 0, -1 ]
															}
, 															{
																"key" : 11,
																"value" : [ 15, 0, -1 ]
															}
, 															{
																"key" : 13,
																"value" : [ 5, 0, -1 ]
															}
, 															{
																"key" : 14,
																"value" : [ 8, 0, -1 ]
															}
, 															{
																"key" : 15,
																"value" : [ 11, 0, -1 ]
															}
, 															{
																"key" : 16,
																"value" : [ 14, 0, -1 ]
															}
, 															{
																"key" : 17,
																"value" : [ 17, 0, -1 ]
															}
 ]
													}
,
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 412.094238000000018, 113.708388999999997, 59.5, 20.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-299",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 579.245604999999955, 394.910888999999997, 214.151366999999993, 20.0 ],
													"saved_object_attributes" : 													{
														"filename" : "swingCalc.js",
														"parameter_enable" : 0
													}
,
													"text" : "js swingCalc.js"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-262",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 25.0, 95.0, 1058.0, 771.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 1,
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 226.625, 66.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-223",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"patching_rect" : [ 50.000003999999997, 655.415526999999997, 32.5, 18.0 ],
																	"text" : "b"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-215",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "clear" ],
																	"patching_rect" : [ 90.625, 505.0, 46.0, 18.0 ],
																	"text" : "t i clear"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-216",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.000003999999997, 577.0, 59.625, 18.0 ],
																	"text" : "buddy"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-217",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 552.0, 39.0, 18.0 ],
																	"text" : "% 480"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-218",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 529.0, 32.5, 18.0 ],
																	"text" : "* 60"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-219",
																	"maxclass" : "newobj",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.000003999999997, 609.415526999999997, 120.5625, 18.0 ],
																	"text" : "pack 0 0 0. 0. 0 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-221",
																	"linecount" : 2,
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 100.0, 145.0, 29.0 ],
																	"text" : "metro @interval 5 ticks @quantize 5 ticks @active 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-222",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 9,
																	"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
																	"patching_rect" : [ 50.0, 140.0, 154.416672000000005, 18.0 ],
																	"text" : "transport"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-261",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.000003999999997, 696.415526999999997, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "int", "int" ],
																	"patching_rect" : [ 90.625, 463.0, 57.0, 18.0 ],
																	"text" : "change -1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 439.0, 59.0, 18.0 ],
																	"text" : "+ 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 415.0, 32.5, 18.0 ],
																	"text" : "* 8"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 90.625, 391.0, 32.5, 18.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 8,
																	"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
																	"patching_rect" : [ 226.625, 140.0, 357.0, 18.0 ],
																	"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 130.625, 414.0, 32.5, 18.0 ],
																	"text" : "- 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 130.625, 391.0, 42.0, 18.0 ],
																	"text" : "zl sum"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 8,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 202.625, 367.0, 354.5, 18.0 ],
																	"text" : "pack 0 0 0 0 0 0 0 0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 538.625, 343.0, 45.0, 18.0 ],
																	"text" : ">= 420."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 490.625, 343.0, 45.0, 18.0 ],
																	"text" : ">= 380."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 442.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 360."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 394.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 240."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 346.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 180."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 298.625, 343.0, 44.0, 18.0 ],
																	"text" : ">= 120."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 250.625, 343.0, 43.0, 18.0 ],
																	"text" : ">= 60."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial Bold",
																	"fontsize" : 10.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 202.625, 343.0, 43.0, 18.0 ],
																	"text" : ">= 0."
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 4 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 7 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 6 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-215", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-17", 1 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 0 ],
																	"midpoints" : [ 127.125, 549.5, 59.500003999999997, 549.5 ],
																	"source" : [ "obj-215", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-218", 0 ],
																	"source" : [ "obj-215", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 2 ],
																	"source" : [ "obj-216", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 0 ],
																	"source" : [ "obj-216", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 1 ],
																	"source" : [ "obj-217", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-217", 0 ],
																	"source" : [ "obj-218", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-223", 0 ],
																	"source" : [ "obj-219", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-222", 0 ],
																	"source" : [ "obj-221", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 404.125, 250.0 ],
																	"order" : 3,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 548.125, 250.0 ],
																	"order" : 0,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 500.125, 250.0 ],
																	"order" : 1,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"midpoints" : [ 76.427084000000008, 274.0, 100.125, 274.0 ],
																	"order" : 0,
																	"source" : [ "obj-222", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-216", 0 ],
																	"source" : [ "obj-222", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 5 ],
																	"source" : [ "obj-222", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 4 ],
																	"source" : [ "obj-222", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 3 ],
																	"source" : [ "obj-222", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-219", 1 ],
																	"order" : 1,
																	"source" : [ "obj-222", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 212.125, 250.0 ],
																	"order" : 7,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 260.125, 250.0 ],
																	"order" : 6,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 308.125, 250.0 ],
																	"order" : 5,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 356.125, 250.0 ],
																	"order" : 4,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"midpoints" : [ 93.354168000000001, 250.0, 452.125, 250.0 ],
																	"order" : 2,
																	"source" : [ "obj-222", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-261", 0 ],
																	"source" : [ "obj-223", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 1 ],
																	"source" : [ "obj-46", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 1 ],
																	"source" : [ "obj-46", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 1 ],
																	"source" : [ "obj-46", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-46", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"source" : [ "obj-46", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-46", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 1 ],
																	"source" : [ "obj-46", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 2 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 3 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 5 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
														"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
													}
,
													"patching_rect" : [ 579.245604999999955, 433.091552999999976, 79.0, 20.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p swingamajig"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 412.094238000000018, 198.248795000000001, 71.944457999999997, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128nd", "128n" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_invisible" : 2,
															"parameter_longname" : "Max pulse",
															"parameter_mmax" : 21,
															"parameter_shortname" : "Max pulse",
															"parameter_type" : 2
														}

													}
,
													"varname" : "max pulse[1]"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-204",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 438.566405999999972, 380.011475000000019, 120.0, 20.0 ],
													"text" : "interval $1, quantize $1"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-205",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 438.566405999999972, 422.011475000000019, 88.0, 42.0 ],
													"text" : "metro @active 1 @interval 32n @quantize 32n"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-153",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 579.245604999999955, 253.538712000000004, 53.0, 20.0 ],
													"text" : "active $1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.6, 0.6, 0.6, 0.06 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"annotation" : "Sync",
													"bgcolor" : [ 0.6, 0.6, 0.6, 0.06 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"id" : "obj-28",
													"maxclass" : "live.button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 476.107544000000019, 789.50268600000004, 23.345901000000001, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 315.87634300000002, 70.335480000000004, 15.0, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "on" ],
															"parameter_exponent" : 2.0,
															"parameter_initial" : [ 50 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "Attack",
															"parameter_mmax" : 2000.0,
															"parameter_shortname" : "Attack",
															"parameter_type" : 0,
															"parameter_unitstyle" : 2
														}

													}
,
													"varname" : "Sync"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"annotation" : "Sync to downbeat every [n] measures.",
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
													"hltcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-89",
													"maxclass" : "live.menu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 476.107544000000019, 676.202636999999982, 41.144463000000002, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 287.156982000000028, 44.0, 42.438744, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "1", "2", "4" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_invisible" : 1,
															"parameter_longname" : "Reset",
															"parameter_mmax" : 3,
															"parameter_shortname" : "Reset",
															"parameter_type" : 2
														}

													}
,
													"textcolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"tricolor" : [ 1.0, 1.0, 1.0, 0.6 ],
													"varname" : "Reset"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 476.107544000000019, 740.602538999999979, 184.095337000000001, 20.0 ],
													"text" : "switch 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-94",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 476.395996000000025, 876.502807999999959, 32.5, 20.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 10.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 431.395996000000025, 917.189574999999991, 109.0, 20.0 ],
													"text" : "counter 1 16"
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"bgcolor" : [ 0.094118, 0.117647, 0.137255, 1.0 ],
													"bordercolor" : [ 1.0, 1.0, 1.0, 0.4 ],
													"id" : "obj-97",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 58.033447000000002, 49.817898, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 5.044422, 42.0, 183.817261000000002, 50.618423 ],
													"proportion" : 0.39,
													"rounded" : 10,
													"varname" : "Display[2]"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-103",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 556.554688000000056, 980.189574999999991, 67.0, 20.0 ],
													"text" : "columns $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 19.582031000000001, 134.01147499999999, 58.0, 22.0 ],
													"restore" : 													{
														"ClockSelect" : [ 0.0 ],
														"PatternGrid" : [ 3, 15, 1, 0, 8, 0, 2000, 4000, 6000, 8000, 10000, 12000, 14000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
														"Pulse" : [ 3.0 ],
														"Reset" : [ 1.0 ],
														"Steps" : [ 15.0 ],
														"Sync" : [ 0.0 ],
														"gatepct" : [ 80.0 ],
														"max pulse[1]" : [ 10.0 ],
														"mute" : [ 0.0 ],
														"swing amount" : [ 0.0 ],
														"swing switch" : [ 1.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u651003643"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 359.766113000000018, 1438.592284999999947, 31.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 97.0, 31.0, 17.0 ],
													"text" : "Gate",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 371.766113000000018, 590.89538600000003, 41.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 0.0, 41.0, 17.0 ],
													"text" : "Trigger",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.582031000000001, 82.918944999999994, 56.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 19.0, 56.0, 17.0 ],
													"text" : "GATE SEQ",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 76.626380999999995, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 37.0, 525.0, 60.338158 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-10",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.852829, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 17.0, 525.0, 80.338158000000007 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 165.079284999999999, 58.033447000000002, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 525.0, 133.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 1 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-204", 0 ],
													"order" : 1,
													"source" : [ "obj-120", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 448.066466999999989, 231.624390000000005, 926.054688000000056, 231.624390000000005 ],
													"order" : 0,
													"source" : [ "obj-120", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"order" : 1,
													"source" : [ "obj-124", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"source" : [ "obj-124", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-124", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-153", 0 ],
													"order" : 0,
													"source" : [ "obj-124", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-132", 0 ],
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-299", 1 ],
													"source" : [ "obj-133", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-155", 0 ],
													"order" : 0,
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"order" : 1,
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-299", 0 ],
													"source" : [ "obj-155", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"midpoints" : [ 487.066405999999972, 361.456420999999978, 307.387329000000022, 361.456420999999978 ],
													"source" : [ "obj-157", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-205", 0 ],
													"source" : [ "obj-204", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 1 ],
													"source" : [ "obj-205", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 1,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"midpoints" : [ 566.054688000000056, 1240.312744000000066, 519.145995999999968, 1240.312744000000066 ],
													"order" : 2,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 3 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 2 ],
													"source" : [ "obj-262", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-262", 0 ],
													"source" : [ "obj-299", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 2 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 1 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 2 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"midpoints" : [ 530.895995999999968, 901.001160000000027, 566.054688000000056, 901.001160000000027 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 4 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 1 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 2 ],
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 214.0, 296.0, 508.0, 116.0 ],
									"varname" : "GateSeq",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 214.0, 203.0, 204.0, 55.0 ],
									"text" : "This Gate Sequencer modulates the Oscillator",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-8",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Oscillator.maxpat",
									"numinlets" : 6,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 364.0, 439.0, 314.0, 116.0 ],
									"varname" : "bp.Oscillator[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-6",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.VCA.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 364.0, 579.0, 113.0, 116.0 ],
									"varname" : "bp.VCA",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Oscillator.maxpat",
									"numinlets" : 6,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 25.0, 434.0, 314.0, 116.0 ],
									"varname" : "bp.Oscillator",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 99.0, 187.0, 107.0, 116.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-7",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 85.0, 222.0, 33.0 ],
													"text" : "## Produces a regular pulse signal synced to gloabl transport ##"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 362.0, 126.0, 135.0, 22.0 ],
													"text" : "interval $1, quantize $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 183.568908999999991, 375.0, 32.5, 22.0 ],
													"text" : "!= 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 183.568908999999991, 446.0, 117.431090999999995, 22.0 ],
													"text" : "gate~ 1 1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-29",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 183.568908999999991, 302.464355000000012, 40.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 50.0, 19.0, 52.0, 14.764645 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "mute",
															"parameter_mmax" : 1,
															"parameter_shortname" : "mute",
															"parameter_type" : 2
														}

													}
,
													"text" : "mute",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "mute",
													"varname" : "mute"
												}

											}
, 											{
												"box" : 												{
													"comment" : "signal output",
													"id" : "obj-5",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 183.568908999999991, 500.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-27",
													"ignoreclick" : 1,
													"maxclass" : "live.button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 234.784454000000011, 263.0, 15.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 72.292229000000006, 15.0, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "on" ],
															"parameter_invisible" : 2,
															"parameter_longname" : "led",
															"parameter_mmax" : 1,
															"parameter_shortname" : "led",
															"parameter_type" : 2
														}

													}
,
													"varname" : "led"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 343.0, 307.0, 32.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 282.0, 307.0, 32.5, 22.0 ],
													"text" : "5"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-129",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 380.0, 239.735229000000004, 70.0, 15.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 25.134384000000001, 72.292229000000006, 78.0, 15.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 10 ],
															"parameter_initial_enable" : 1,
															"parameter_longname" : "GateTime",
															"parameter_mmax" : 500.0,
															"parameter_shortname" : "GateTime",
															"parameter_type" : 0,
															"parameter_unitstyle" : 2
														}

													}
,
													"textcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"varname" : "GateTime"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 343.0, 271.0, 56.0, 22.0 ],
													"text" : "delay 10"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"id" : "obj-20",
													"maxclass" : "live.toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 282.0, 146.907500999999996, 19.0, 18.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 3.0, 46.792228999999999, 17.0, 18.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_enum" : [ "off", "on" ],
															"parameter_initial" : [ 1 ],
															"parameter_initial_enable" : 1,
															"parameter_linknames" : 1,
															"parameter_longname" : "enable",
															"parameter_mmax" : 1,
															"parameter_shortname" : "enable",
															"parameter_type" : 2
														}

													}
,
													"varname" : "enable"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 282.0, 195.0, 199.0, 22.0 ],
													"text" : "metro 4n @active 1 @quantize 16n"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"fontsize" : 10.0,
													"id" : "obj-34",
													"items" : [ "32.0.0", ",", "16.0.0", ",", "8.0.0", ",", "4.0.0", ",", "2.0.0", ",", "1.0.0", ",", "1nd", ",", "1n", ",", "1nt", ",", "2nd", ",", "2n", ",", "4nd", ",", "4n", ",", "4nt", ",", "8nd", ",", "8n", ",", "8nt", ",", "16nd", ",", "16n", ",", "16nt", ",", "32nd", ",", "32n", ",", "32nt", ",", "64nd", ",", "64n", ",", "128n" ],
													"maxclass" : "umenu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 336.0, 88.907500999999996, 71.0, 20.0 ],
													"pattrmode" : 1,
													"presentation" : 1,
													"presentation_rect" : [ 25.134384000000001, 46.792228999999999, 78.0, 20.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ "8n" ],
															"parameter_initial_enable" : 1,
															"parameter_invisible" : 1,
															"parameter_longname" : "Pulse",
															"parameter_mmax" : 25.0,
															"parameter_shortname" : "Pulse",
															"parameter_type" : 3
														}

													}
,
													"textcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"varname" : "Pulse"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 282.0, 396.0, 33.0, 22.0 ],
													"text" : "sig~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 37.0, 126.0, 59.5, 22.0 ],
													"restore" : 													{
														"GateTime" : [ 10.0 ],
														"Pulse" : [ "4n" ],
														"enable" : [ 1.0 ],
														"led" : [ 1.0 ],
														"mute" : [ 0.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u813003553"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 227.668883999999991, 504.0, 41.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 97.0, 41.0, 17.0 ],
													"text" : "Trigger",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 62.907501000000003, 43.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 19.0, 43.0, 17.0 ],
													"text" : "METRO",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 37.0, 425.0, 60.338158 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-131",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 81.337188999999995, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 17.0, 425.0, 80.338158000000007 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 124.079284999999999, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 425.0, 133.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 1 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 0,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 1,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"order" : 2,
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 37.0, 172.5, 107.0, 116.0 ],
									"varname" : "MetronomicPulse",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-7",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 263.0, 730.0, 111.0, 116.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 1,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 99.0, 294.0, 33.0 ],
													"text" : "## Provides access to global transport functions and remembers state and tempo with your patcher ##"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.5, 297.0, 61.0, 22.0 ],
													"text" : "tempo $1"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 14.0,
													"id" : "obj-129",
													"maxclass" : "live.numbox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "float" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 238.5, 246.735229000000004, 97.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 72.792229000000006, 100.0, 20.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_initial" : [ 80 ],
															"parameter_initial_enable" : 1,
															"parameter_linknames" : 1,
															"parameter_longname" : "Tempo",
															"parameter_mmax" : 250.0,
															"parameter_shortname" : "Tempo",
															"parameter_type" : 0,
															"parameter_units" : "bpm",
															"parameter_unitstyle" : 9
														}

													}
,
													"textcolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"varname" : "Tempo"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 9,
													"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
													"patching_rect" : [ 195.0, 344.0, 127.0, 22.0 ],
													"text" : "transport"
												}

											}
, 											{
												"box" : 												{
													"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
													"activebgoncolor" : [ 0.278431, 0.839216, 1.0, 1.0 ],
													"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
													"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
													"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
													"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
													"id" : "obj-76",
													"maxclass" : "live.text",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"parameter_enable" : 1,
													"patching_rect" : [ 195.0, 197.5, 62.0, 21.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 4.0, 42.792228999999999, 100.0, 24.0 ],
													"saved_attribute_attributes" : 													{
														"valueof" : 														{
															"parameter_defer" : 1,
															"parameter_enum" : [ "val1", "val2" ],
															"parameter_initial" : [ 0.0 ],
															"parameter_initial_enable" : 1,
															"parameter_linknames" : 1,
															"parameter_longname" : "Transport",
															"parameter_mmax" : 1,
															"parameter_shortname" : "Transport",
															"parameter_type" : 2
														}

													}
,
													"text" : "Off",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"texton" : "On",
													"varname" : "Transport"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 37.0, 147.160706000000005, 59.5, 22.0 ],
													"restore" : 													{
														"Tempo" : [ 128.0 ],
														"Transport" : [ 1.0 ]
													}
,
													"text" : "autopattr",
													"varname" : "u706003556"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 67.907471000000001, 107.0, 17.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 2.0, 19.0, 107.0, 17.0 ],
													"text" : "GLOBAL TRANSPORT",
													"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
													"id" : "obj-130",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 37.0, 425.0, 60.338158 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
													"id" : "obj-131",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 81.337188999999995, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 17.0, 425.0, 80.338158000000007 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
, 											{
												"box" : 												{
													"angle" : 0.0,
													"background" : 1,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-135",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 124.079284999999999, 43.711638999999998, 37.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.0, 0.0, 425.0, 133.0 ],
													"proportion" : 0.39,
													"rounded" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 189.0, 720.0, 111.0, 116.0 ],
									"varname" : "GlobalTransport",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"extract" : 1,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "bp.Stereo.maxpat",
									"numinlets" : 2,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 24.0, 720.0, 148.0, 116.0 ],
									"varname" : "bp.Stereo",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 87.6875, 411.0, 21.0 ],
									"text" : "Sends a Gate Signal momentarily at each Sequence On posiiton",
									"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
									"varname" : "autohelp_top_digest"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 48.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 25.6875, 360.0, 60.0 ],
									"text" : "Gate Sequencer",
									"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
									"varname" : "autohelp_top_digest[2]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 34.5, 586.0, 162.5, 586.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 34.5, 586.0, 33.5, 586.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"midpoints" : [ 702.5, 566.5, 467.5, 566.5 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 46.5, 102.5, 694.5, 102.5 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 373.5, 699.0, 162.5, 699.0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 373.5, 699.0, 33.5, 699.0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 2 ]
								}

							}
 ],
						"bgcolor" : [ 0.88, 0.88, 0.88, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
						"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
					}
,
					"patching_rect" : [ 36.0, 27.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.88, 0.88, 0.88, 1.0 ],
						"tags" : ""
					}
,
					"text" : "p basic",
					"varname" : "basic_tab"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2::obj-13::obj-120" : [ "Max pulse", "Max pulse", 0 ],
			"obj-2::obj-13::obj-125" : [ "PatternGrid", "PatternGrid", 0 ],
			"obj-2::obj-13::obj-139" : [ "ClockSelect", "ClockSelect", 0 ],
			"obj-2::obj-13::obj-155" : [ "Swing amount", "Swing amount", 0 ],
			"obj-2::obj-13::obj-157" : [ "Swing enable", "Swing enable", 0 ],
			"obj-2::obj-13::obj-20" : [ "mute[1]", "mute", 0 ],
			"obj-2::obj-13::obj-28" : [ "Attack", "Attack", 0 ],
			"obj-2::obj-13::obj-89" : [ "Reset", "Reset", 0 ],
			"obj-2::obj-13::obj-9" : [ "gatepct", "gatepct", 0 ],
			"obj-2::obj-13::obj-95" : [ "Steps", "Steps", 0 ],
			"obj-2::obj-13::obj-96" : [ "Pulse[1]", "Pulse", 0 ],
			"obj-2::obj-14::obj-120" : [ "Max pulse[1]", "Max pulse", 0 ],
			"obj-2::obj-14::obj-125" : [ "PatternGrid[1]", "PatternGrid", 0 ],
			"obj-2::obj-14::obj-139" : [ "ClockSelect[1]", "ClockSelect", 0 ],
			"obj-2::obj-14::obj-155" : [ "Swing amount[1]", "Swing amount", 0 ],
			"obj-2::obj-14::obj-157" : [ "Swing enable[1]", "Swing enable", 0 ],
			"obj-2::obj-14::obj-20" : [ "mute[2]", "mute", 0 ],
			"obj-2::obj-14::obj-28" : [ "Attack[1]", "Attack", 0 ],
			"obj-2::obj-14::obj-89" : [ "Reset[1]", "Reset", 0 ],
			"obj-2::obj-14::obj-9" : [ "gatepct[1]", "gatepct", 0 ],
			"obj-2::obj-14::obj-95" : [ "Steps[1]", "Steps", 0 ],
			"obj-2::obj-14::obj-96" : [ "Pulse[2]", "Pulse", 0 ],
			"obj-2::obj-18::obj-129" : [ "GateTime", "GateTime", 0 ],
			"obj-2::obj-18::obj-20" : [ "enable", "enable", 0 ],
			"obj-2::obj-18::obj-27" : [ "led", "led", 0 ],
			"obj-2::obj-18::obj-29" : [ "mute", "mute", 0 ],
			"obj-2::obj-18::obj-34" : [ "Pulse", "Pulse", 0 ],
			"obj-2::obj-1::obj-106" : [ "CV3", "CV3", 0 ],
			"obj-2::obj-1::obj-107" : [ "Linear", "Linear", 0 ],
			"obj-2::obj-1::obj-11" : [ "PWM", "PWM", 0 ],
			"obj-2::obj-1::obj-129" : [ "CV2", "CV2", 0 ],
			"obj-2::obj-1::obj-36" : [ "PW", "PW", 0 ],
			"obj-2::obj-1::obj-4" : [ "Waveform", "Waveform", 0 ],
			"obj-2::obj-1::obj-45" : [ "FreqMode", "FreqMode", 0 ],
			"obj-2::obj-1::obj-46" : [ "Offset", "Offset", 0 ],
			"obj-2::obj-1::obj-51" : [ "Freq", "Freq", 0 ],
			"obj-2::obj-1::obj-53" : [ "Mute[1]", "Mute", 0 ],
			"obj-2::obj-2::obj-22" : [ "Mute", "Mute", 0 ],
			"obj-2::obj-2::obj-52" : [ "Level", "Level", 0 ],
			"obj-2::obj-2::obj-55" : [ "DSP", "DSP", 0 ],
			"obj-2::obj-2::obj-56" : [ "OutputChannel", "OutputChannel", 0 ],
			"obj-2::obj-6::obj-33" : [ "Quadrants", "Quadrants", 0 ],
			"obj-2::obj-6::obj-55" : [ "Bypass", "Bypass", 0 ],
			"obj-2::obj-6::obj-80" : [ "Response", "Response", 0 ],
			"obj-2::obj-7::obj-129" : [ "Tempo", "Tempo", 0 ],
			"obj-2::obj-7::obj-76" : [ "Transport", "Transport", 0 ],
			"obj-2::obj-8::obj-106" : [ "CV3[1]", "CV3", 0 ],
			"obj-2::obj-8::obj-107" : [ "Linear[1]", "Linear", 0 ],
			"obj-2::obj-8::obj-11" : [ "PWM[1]", "PWM", 0 ],
			"obj-2::obj-8::obj-129" : [ "CV2[1]", "CV2", 0 ],
			"obj-2::obj-8::obj-36" : [ "PW[1]", "PW", 0 ],
			"obj-2::obj-8::obj-4" : [ "Waveform[1]", "Waveform", 0 ],
			"obj-2::obj-8::obj-45" : [ "FreqMode[1]", "FreqMode", 0 ],
			"obj-2::obj-8::obj-46" : [ "Offset[1]", "Offset", 0 ],
			"obj-2::obj-8::obj-51" : [ "Freq[1]", "Freq", 0 ],
			"obj-2::obj-8::obj-53" : [ "Mute[2]", "Mute", 0 ],
			"obj-2::obj-9::obj-11" : [ "clear", "clear", 0 ],
			"obj-2::obj-9::obj-12" : [ "stealthinit", "stealthinit", 0 ],
			"obj-2::obj-9::obj-139" : [ "On[1]", "On", 0 ],
			"obj-2::obj-9::obj-140" : [ "On[2]", "On", 0 ],
			"obj-2::obj-9::obj-144" : [ "On[3]", "On", 0 ],
			"obj-2::obj-9::obj-152" : [ "On[4]", "On", 0 ],
			"obj-2::obj-9::obj-153" : [ "On[5]", "On", 0 ],
			"obj-2::obj-9::obj-155" : [ "On[6]", "On", 0 ],
			"obj-2::obj-9::obj-156" : [ "On[7]", "On", 0 ],
			"obj-2::obj-9::obj-157" : [ "On[8]", "On", 0 ],
			"obj-2::obj-9::obj-184" : [ "TriggerOrGate", "TriggerOrGate", 1 ],
			"obj-2::obj-9::obj-189" : [ "Subdiv[1]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-190" : [ "Subdiv[2]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-191" : [ "Subdiv[3]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-192" : [ "Subdiv[4]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-193" : [ "Subdiv[5]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-194" : [ "Subdiv[6]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-195" : [ "Subdiv[7]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-196" : [ "Subdiv[8]", "Sub[1]", 0 ],
			"obj-2::obj-9::obj-20" : [ "mute[3]", "mute", 0 ],
			"obj-2::obj-9::obj-205" : [ "CV", "CV", 0 ],
			"obj-2::obj-9::obj-225" : [ "Step", "Step", 0 ],
			"obj-2::obj-9::obj-226" : [ "AutoReset", "AutoReset", 0 ],
			"obj-2::obj-9::obj-227" : [ "ResetInterval", "ResetInterval", 0 ],
			"obj-2::obj-9::obj-228" : [ "Offset[9]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-229" : [ "Offset[2]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-230" : [ "Offset[3]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-231" : [ "Offset[4]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-232" : [ "Offset[5]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-233" : [ "Offset[6]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-234" : [ "Offset[7]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-235" : [ "Offset[8]", "Offset[1]", 0 ],
			"obj-2::obj-9::obj-24" : [ "reset", "reset", 0 ],
			"obj-2::obj-9::obj-29" : [ "Steps[2]", "Div", 0 ],
			"obj-2::obj-9::obj-3" : [ "divisors", "divisors", 0 ],
			"obj-2::obj-9::obj-33" : [ "PresetSubdivisions", "PresetSubdiv", 0 ],
			"obj-2::obj-9::obj-48" : [ "Steps[4]", "Div", 0 ],
			"obj-2::obj-9::obj-49" : [ "Steps[5]", "Div", 0 ],
			"obj-2::obj-9::obj-50" : [ "Steps[6]", "Div", 0 ],
			"obj-2::obj-9::obj-51" : [ "Steps[7]", "Div", 0 ],
			"obj-2::obj-9::obj-52" : [ "Steps[8]", "Div", 0 ],
			"obj-2::obj-9::obj-6" : [ "Steps[3]", "Div", 0 ],
			"obj-2::obj-9::obj-7" : [ "Steps[9]", "Div", 0 ],
			"obj-2::obj-9::obj-90" : [ "OffsetEndpointsBehavior", "OffsetEndpoints", 0 ],
			"obj-2::obj-9::obj-91" : [ "NoteGrid[2]", "NoteGrid", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-2::obj-1::obj-53" : 				{
					"parameter_longname" : "Mute[1]"
				}
,
				"obj-2::obj-8::obj-106" : 				{
					"parameter_longname" : "CV3[1]"
				}
,
				"obj-2::obj-8::obj-107" : 				{
					"parameter_longname" : "Linear[1]"
				}
,
				"obj-2::obj-8::obj-11" : 				{
					"parameter_longname" : "PWM[1]"
				}
,
				"obj-2::obj-8::obj-129" : 				{
					"parameter_longname" : "CV2[1]"
				}
,
				"obj-2::obj-8::obj-36" : 				{
					"parameter_longname" : "PW[1]"
				}
,
				"obj-2::obj-8::obj-4" : 				{
					"parameter_longname" : "Waveform[1]"
				}
,
				"obj-2::obj-8::obj-45" : 				{
					"parameter_longname" : "FreqMode[1]"
				}
,
				"obj-2::obj-8::obj-46" : 				{
					"parameter_longname" : "Offset[1]"
				}
,
				"obj-2::obj-8::obj-51" : 				{
					"parameter_longname" : "Freq[1]"
				}
,
				"obj-2::obj-8::obj-53" : 				{
					"parameter_longname" : "Mute[2]"
				}
,
				"obj-2::obj-9::obj-20" : 				{
					"parameter_longname" : "mute[3]"
				}
,
				"obj-2::obj-9::obj-228" : 				{
					"parameter_longname" : "Offset[9]"
				}
,
				"obj-2::obj-9::obj-29" : 				{
					"parameter_longname" : "Steps[2]"
				}
,
				"obj-2::obj-9::obj-6" : 				{
					"parameter_longname" : "Steps[3]"
				}
,
				"obj-2::obj-9::obj-7" : 				{
					"parameter_longname" : "Steps[9]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bp.Stereo.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Output",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Oscillator.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sine.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "updown.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "up.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "square.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "bp.VCA.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Level",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "swingCalc.js",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Rotating Clock Divider.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Sequencer",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"snapshot" : 		{
			"filetype" : "C74Snapshot",
			"version" : 2,
			"minorversion" : 0,
			"name" : "snapshotlist",
			"origin" : "jpatcher",
			"type" : "list",
			"subtype" : "Undefined",
			"embed" : 1,
			"snapshot" : 			{
				"name" : "bp.Gate Sequencer.maxhelp",
				"valuedictionary" : 				{
					"parameter_values" : 					{
						"Attack" : 0.0,
						"Attack[1]" : 0.0,
						"Bypass" : 0.0,
						"CV2" : 100.0,
						"CV2[1]" : 0.0,
						"CV3" : 0.0,
						"CV3[1]" : 0.0,
						"ClockSelect" : 0.0,
						"ClockSelect[1]" : 0.0,
						"DSP" : 1.0,
						"Freq" : 6763.828125,
						"FreqMode" : 1.0,
						"FreqMode[1]" : 1.0,
						"Freq[1]" : 5667.182128999999804,
						"GateTime" : 10.0,
						"Level" : -5.0,
						"Linear" : 330.70864899999998,
						"Linear[1]" : 0.0,
						"Mute" : 0.0,
						"Mute[1]" : 0.0,
						"Mute[2]" : 0.0,
						"Offset" : -12.0,
						"Offset[1]" : -12.25,
						"OutputChannel" : 0.0,
						"PW" : 71.259842000000006,
						"PWM" : 29.133858,
						"PWM[1]" : 0.0,
						"PW[1]" : 50.0,
						"Quadrants" : 0.0,
						"Response" : 0.0,
						"Steps" : 16.0,
						"Steps[1]" : 32.0,
						"Swing amount" : 0.0,
						"Swing amount[1]" : 50.0,
						"Swing enable" : 0.0,
						"Swing enable[1]" : 1.0,
						"Tempo" : 128.0,
						"Transport" : 1.0,
						"Waveform" : 2.0,
						"Waveform[1]" : 2.0,
						"enable" : 1.0,
						"gatepct" : 80.0,
						"gatepct[1]" : 80.0,
						"mute" : 0.0,
						"mute[1]" : 0.0,
						"mute[2]" : 0.0,
						"blob" : 						{
							"PatternGrid" : [ 3, 16, 1, 0, 7, 0, 3000, 4000, 8000, 10000, 12000, 14000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
							"PatternGrid[1]" : [ 3, 32, 1, 0, 16, 0, 3000, 4000, 7000, 8000, 10000, 12000, 14000, 16000, 18000, 21000, 23000, 24000, 27000, 28000, 30000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
							"Pulse" : [ "16n" ],
							"Pulse[1]" : [ 2.0 ],
							"Pulse[2]" : [ 3.0 ],
							"Reset" : [ 1.0 ],
							"Reset[1]" : [ 0.0 ]
						}

					}

				}

			}
,
			"snapshotlist" : 			{
				"current_snapshot" : 0,
				"entries" : [ 					{
						"filetype" : "C74Snapshot",
						"version" : 1,
						"name" : "bp.Gate Sequencer.maxhelp",
						"origin" : "bp.Gate Sequencer.maxhelp",
						"type" : "patcher",
						"subtype" : "Undefined",
						"snapshot" : 						{
							"name" : "bp.Gate Sequencer.maxhelp",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Attack" : 0.0,
									"Attack[1]" : 0.0,
									"Bypass" : 0.0,
									"CV2" : 100.0,
									"CV2[1]" : 0.0,
									"CV3" : 0.0,
									"CV3[1]" : 0.0,
									"ClockSelect" : 0.0,
									"ClockSelect[1]" : 0.0,
									"DSP" : 1.0,
									"Freq" : 6763.828125,
									"FreqMode" : 1.0,
									"FreqMode[1]" : 1.0,
									"Freq[1]" : 5667.182128999999804,
									"GateTime" : 10.0,
									"Level" : -5.0,
									"Linear" : 330.70864899999998,
									"Linear[1]" : 0.0,
									"Mute" : 0.0,
									"Mute[1]" : 0.0,
									"Mute[2]" : 0.0,
									"Offset" : -12.0,
									"Offset[1]" : -12.25,
									"OutputChannel" : 0.0,
									"PW" : 71.259842000000006,
									"PWM" : 29.133858,
									"PWM[1]" : 0.0,
									"PW[1]" : 50.0,
									"Quadrants" : 0.0,
									"Response" : 0.0,
									"Steps" : 16.0,
									"Steps[1]" : 32.0,
									"Swing amount" : 0.0,
									"Swing amount[1]" : 50.0,
									"Swing enable" : 0.0,
									"Swing enable[1]" : 1.0,
									"Tempo" : 128.0,
									"Transport" : 1.0,
									"Waveform" : 2.0,
									"Waveform[1]" : 2.0,
									"enable" : 1.0,
									"gatepct" : 80.0,
									"gatepct[1]" : 80.0,
									"mute" : 0.0,
									"mute[1]" : 0.0,
									"mute[2]" : 0.0,
									"blob" : 									{
										"PatternGrid" : [ 3, 16, 1, 0, 7, 0, 3000, 4000, 8000, 10000, 12000, 14000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
										"PatternGrid[1]" : [ 3, 32, 1, 0, 16, 0, 3000, 4000, 7000, 8000, 10000, 12000, 14000, 16000, 18000, 21000, 23000, 24000, 27000, 28000, 30000, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ],
										"Pulse" : [ "16n" ],
										"Pulse[1]" : [ 2.0 ],
										"Pulse[2]" : [ 3.0 ],
										"Reset" : [ 1.0 ],
										"Reset[1]" : [ 0.0 ]
									}

								}

							}

						}
,
						"embed" : 0
					}
 ]
			}

		}

	}

}
