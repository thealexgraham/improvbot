{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 233.0, 44.0, 930.0, 664.0 ],
		"bglocked" : 0,
		"defrect" : [ 233.0, 44.0, 930.0, 664.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r melody-collect",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 136.0, 14.0, 127.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print forms",
					"patching_rect" : [ 266.0, 208.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-35",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r pitch-collect",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 294.0, 31.0, 113.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-33",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r init-start",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 549.0, 438.0, 93.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p like-test",
					"patching_rect" : [ 832.0, 330.0, 62.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1205.0, 207.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 1205.0, 207.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.save",
									"patching_rect" : [ 240.0, 435.0, 115.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 240.0, 345.0, 77.0, 77.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.835294, 0.858824, 0.541176, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 250",
									"patching_rect" : [ 30.0, 345.0, 63.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.yes-next-3",
									"patching_rect" : [ 30.0, 375.0, 145.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 105.0, 195.0, 51.0, 51.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.372549, 0.439216, 0.352941, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 250",
									"patching_rect" : [ 30.0, 285.0, 63.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.yes-next-2",
									"patching_rect" : [ 30.0, 315.0, 145.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 105.0, 135.0, 51.0, 51.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.317647, 0.709804, 0.321569, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper set-variable",
									"color" : [ 0.745098, 0.729412, 0.870588, 1.0 ],
									"patching_rect" : [ 330.0, 290.0, 105.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-54",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "@approve-length $1",
									"patching_rect" : [ 330.0, 265.0, 119.0, 18.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-43",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 330.0, 240.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.next",
									"patching_rect" : [ 330.0, 150.0, 112.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 330.0, 90.0, 50.0, 50.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.yes",
									"patching_rect" : [ 405.0, 180.0, 108.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 405.0, 90.0, 51.0, 51.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.67451, 0.819608, 0.572549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 250",
									"patching_rect" : [ 180.0, 195.0, 63.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 250",
									"patching_rect" : [ 30.0, 225.0, 63.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.next",
									"patching_rect" : [ 180.0, 225.0, 112.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper approve.yes-next-1",
									"patching_rect" : [ 30.0, 255.0, 145.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 180.0, 75.0, 77.0, 77.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.960784, 0.439216, 0.478431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 105.0, 75.0, 51.0, 51.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 805.0, 85.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-121",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.playphrase",
					"patching_rect" : [ 770.0, 115.0, 127.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-118",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 680.0, 355.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-117",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.tempo-tick no-out",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 705.0, 545.0, 161.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-115",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r tempo-metro",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 700.0, 450.0, 118.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-113",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 700.0, 475.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-112",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 785.0, 500.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-107",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r get-tempo",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 755.0, 475.0, 104.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-110",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 800",
					"patching_rect" : [ 700.0, 500.0, 65.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-53",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r delta-collect",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 490.0, 5.0, 114.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-105",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r lisper-start",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 530.0, 465.0, 106.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-102",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper control-loop-tick silent",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 530.0, 540.0, 159.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-101",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 530.0, 490.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"id" : "obj-60",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 250",
					"patching_rect" : [ 530.0, 515.0, 65.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-100",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "melodic (car) recording",
					"patching_rect" : [ 15.0, 20.0, 134.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-99",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r reset-borax",
					"color" : [ 0.960784, 0.439216, 0.478431, 1.0 ],
					"patching_rect" : [ 165.0, 75.0, 79.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-98",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r reset-borax",
					"color" : [ 0.960784, 0.439216, 0.478431, 1.0 ],
					"patching_rect" : [ 590.0, 95.0, 79.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-97",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send reset-borax",
					"patching_rect" : [ 380.0, 640.0, 101.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-96",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r reset-borax",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 380.0, 590.0, 111.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-94",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 380.0, 615.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-95",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 490.0, 55.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-90",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 490.0, 80.0, 34.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-91",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack",
					"patching_rect" : [ 490.0, 105.0, 73.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-92",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r notein1",
					"color" : [ 0.960784, 0.439216, 0.478431, 1.0 ],
					"patching_rect" : [ 515.0, 55.0, 57.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-93",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delta time collecting",
					"patching_rect" : [ 525.0, 30.0, 118.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-85",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "split 150 10000",
					"patching_rect" : [ 490.0, 160.0, 92.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-86",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.collect-deltas silent",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 490.0, 185.0, 170.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-87",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "borax",
					"patching_rect" : [ 490.0, 130.0, 127.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-89",
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch class collection",
					"patching_rect" : [ 325.0, 55.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-78",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.prime-forms silent",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 315.0, 185.0, 164.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-66",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"patching_rect" : [ 345.0, 104.0, 57.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-79",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 365.666687, 127.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-80",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 305.0, 95.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-81",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 325.0, 55.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 330.0, 132.0, 34.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-82",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "quickthresh 500 40 40",
					"patching_rect" : [ 315.0, 160.0, 129.0, 20.0 ],
					"numinlets" : 4,
					"fontsize" : 12.0,
					"id" : "obj-83",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"color" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
					"patching_rect" : [ 345.0, 77.0, 99.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-84",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 85.0, 45.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-77",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 85.0, 70.0, 34.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-75",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack",
					"patching_rect" : [ 85.0, 95.0, 86.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-74",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r notein1",
					"color" : [ 0.960784, 0.439216, 0.478431, 1.0 ],
					"patching_rect" : [ 110.0, 45.0, 57.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-71",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send notein1",
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"patching_rect" : [ 495.0, 640.0, 79.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-69",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"patching_rect" : [ 495.0, 615.0, 86.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"color" : [ 0.478431, 0.709804, 0.317647, 1.0 ],
					"patching_rect" : [ 495.0, 590.0, 152.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s metro",
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"patching_rect" : [ 730.0, 405.0, 51.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-61",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 695.0, 45.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-73",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"patching_rect" : [ 695.0, 25.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-72",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 350.0, 255.0, 4.0, 430.0 ],
					"numinlets" : 1,
					"id" : "obj-68",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 370.0, 255.0, 453.0, 4.0 ],
					"numinlets" : 1,
					"id" : "obj-65",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 255.0, 370.0, 4.0 ],
					"numinlets" : 1,
					"id" : "obj-62",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control",
					"patching_rect" : [ 380.0, 280.0, 66.0, 25.0 ],
					"numinlets" : 1,
					"fontsize" : 16.0,
					"id" : "obj-57",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output",
					"patching_rect" : [ 65.0, 345.0, 68.0, 25.0 ],
					"numinlets" : 1,
					"fontsize" : 16.0,
					"id" : "obj-46",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input",
					"patching_rect" : [ 300.0, 5.0, 68.0, 25.0 ],
					"numinlets" : 1,
					"fontsize" : 16.0,
					"id" : "obj-32",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p controls",
					"patching_rect" : [ 695.0, 70.0, 68.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-43",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 639.0, 136.0, 531.0, 388.0 ],
						"bglocked" : 0,
						"defrect" : [ 639.0, 136.0, 531.0, 388.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 249.0, 277.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 372.0, 287.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.oboe",
									"patching_rect" : [ 360.0, 322.0, 95.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.cello",
									"patching_rect" : [ 234.0, 319.0, 93.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"patching_rect" : [ 251.0, 145.0, 39.0, 32.0 ],
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"format" : 4,
									"patching_rect" : [ 410.0, 215.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 10 2000",
									"patching_rect" : [ 275.0, 235.0, 79.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.tap-tempo no-out",
									"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
									"patching_rect" : [ 275.0, 260.0, 160.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 275.0, 185.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "timer",
									"patching_rect" : [ 275.0, 210.0, 76.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-41",
									"numoutlets" : 2,
									"outlettype" : [ "float", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.select-mode",
									"patching_rect" : [ 70.0, 245.0, 134.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 15.0, 245.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"patching_rect" : [ 40.0, 200.0, 123.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"items" : [ "analysis", ",", "call", "and", "response", ",", "accompanied", ",", "solo" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper r lisper-start",
									"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
									"patching_rect" : [ 35.0, 5.0, 106.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "midiout b 2",
									"patching_rect" : [ 460.0, 85.0, 69.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "midiin",
									"patching_rect" : [ 460.0, 55.0, 42.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 170.0, 35.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r metro",
									"patching_rect" : [ 170.0, 15.0, 49.0, 20.0 ],
									"numinlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 410.0, 190.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"format" : 4,
									"patching_rect" : [ 410.0, 165.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p player",
									"patching_rect" : [ 410.0, 120.0, 80.0, 20.0 ],
									"numinlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1271.0, 80.0, 649.0, 428.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 1271.0, 80.0, 649.0, 428.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 1,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "gswitch2",
													"ignoreclick" : 0,
													"patching_rect" : [ 165.0, 315.0, 39.0, 32.0 ],
													"numinlets" : 2,
													"presentation" : 0,
													"id" : "obj-21",
													"hidden" : 0,
													"int" : 0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "send seq-in",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 180.0, 375.0, 73.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 12.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-19",
													"hidden" : 0,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "midiparse",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 180.0, 270.0, 100.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 12.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-13",
													"hidden" : 0,
													"numoutlets" : 7,
													"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Recording",
													"ignoreclick" : 1,
													"patching_rect" : [ 27.0, 158.0, 63.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
													"underline" : 0,
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-18",
													"hidden" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Sequencing",
													"ignoreclick" : 1,
													"patching_rect" : [ 331.0, 57.0, 90.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
													"underline" : 0,
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-24",
													"hidden" : 0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "midiin",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 96.0, 158.0, 46.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-12",
													"hidden" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"labelclick" : 0,
													"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"types" : [  ],
													"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
													"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
													"arrow" : 1,
													"truncate" : 1,
													"prefix" : "",
													"ignoreclick" : 0,
													"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
													"patching_rect" : [ 55.0, 117.0, 100.0, 20.0 ],
													"depth" : 0,
													"rounded" : 8,
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"underline" : 0,
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
													"presentation" : 0,
													"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
													"id" : "obj-11",
													"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
													"menumode" : 0,
													"hidden" : 0,
													"prefix_mode" : 0,
													"arrowlink" : 1,
													"numoutlets" : 3,
													"arrowframe" : 1,
													"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
													"align" : 0,
													"pattrmode" : 0,
													"outlettype" : [ "int", "", "" ],
													"showdotfiles" : 0,
													"autopopulate" : 0,
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"items" : [ "to MaxMSP 1", ",", "to MaxMSP 2" ],
													"background" : 0,
													"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "midiinfo",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 55.0, 89.0, 60.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-10",
													"hidden" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 1",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 96.0, 61.0, 75.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-9",
													"hidden" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "stop",
													"ignoreclick" : 0,
													"patching_rect" : [ 360.0, 90.0, 50.0, 18.0 ],
													"fontface" : 0,
													"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
													"id" : "obj-8",
													"hidden" : 0,
													"numoutlets" : 1,
													"gradient" : 0,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "start",
													"ignoreclick" : 0,
													"patching_rect" : [ 300.0, 90.0, 50.0, 18.0 ],
													"fontface" : 0,
													"bgcolor" : [ 0.533333, 0.870588, 0.635294, 1.0 ],
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
													"id" : "obj-7",
													"hidden" : 0,
													"numoutlets" : 1,
													"gradient" : 0,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "record",
													"ignoreclick" : 0,
													"patching_rect" : [ 240.0, 90.0, 50.0, 18.0 ],
													"fontface" : 0,
													"bgcolor" : [ 0.894118, 0.494118, 0.494118, 1.0 ],
													"numinlets" : 2,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
													"id" : "obj-5",
													"hidden" : 0,
													"numoutlets" : 1,
													"gradient" : 0,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 210.0, 210.0, 20.0, 20.0 ],
													"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
													"numinlets" : 1,
													"presentation" : 0,
													"id" : "obj-4",
													"hidden" : 0,
													"numoutlets" : 1,
													"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"outlettype" : [ "bang" ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "midiout",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 334.0, 272.0, 68.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-3",
													"hidden" : 0,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "midiflush",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 240.0, 240.0, 68.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-2",
													"hidden" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "seq",
													"color" : [ 0.8, 0.84, 0.71, 1.0 ],
													"ignoreclick" : 0,
													"patching_rect" : [ 240.0, 210.0, 100.0, 20.0 ],
													"fontface" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 11.595187,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"presentation" : 0,
													"id" : "obj-1",
													"hidden" : 0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"background" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 105.5, 234.0, 249.5, 234.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 105.5, 199.0, 249.5, 199.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 369.5, 159.0, 219.5, 159.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 369.5, 150.0, 249.5, 150.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 309.5, 141.0, 249.5, 141.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 219.5, 234.0, 249.5, 234.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 22.0, 137.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "@delta-variance $1",
									"patching_rect" : [ 82.0, 137.0, 115.0, 18.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper set-variable",
									"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
									"patching_rect" : [ 82.0, 157.0, 105.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dial",
									"size" : 40.0,
									"floatoutput" : 1,
									"patching_rect" : [ 82.0, 82.0, 40.0, 40.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"mult" : 0.025,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 386.0, 72.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper r get-tempo",
									"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
									"patching_rect" : [ 325.0, 8.0, 104.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 450.0, 15.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 243.0, 35.0, 36.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-35",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "800",
									"patching_rect" : [ 243.0, 61.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "75 300",
									"patching_rect" : [ 300.0, 90.0, 47.0, 18.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-66",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"patching_rect" : [ 300.0, 110.0, 69.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 4",
									"patching_rect" : [ 300.0, 160.0, 61.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-60",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 100 100",
									"patching_rect" : [ 300.0, 135.0, 110.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-59",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 248.0, 2.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-58",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 278.0, 78.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 800",
									"patching_rect" : [ 280.0, 40.0, 65.0, 20.0 ],
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.tap-tempo no-out",
									"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
									"patching_rect" : [ 125.0, 115.0, 160.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 130.0, 50.0, 24.0, 24.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper stop-lisper",
									"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
									"patching_rect" : [ 130.0, 80.0, 98.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 14.0, 31.0, 24.0, 24.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "lisper max.initialize",
									"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
									"patching_rect" : [ 14.0, 59.0, 111.0, 20.0 ],
									"numinlets" : 3,
									"fontsize" : 12.0,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 252.5, 100.5, 134.5, 100.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-59", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 127",
					"patching_rect" : [ 380.0, 335.0, 65.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-70",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"color" : [ 0.478431, 0.709804, 0.317647, 1.0 ],
					"patching_rect" : [ 380.0, 310.0, 42.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-67",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "split 10 2000",
					"patching_rect" : [ 380.0, 410.0, 79.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-50",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.tap-tempo no-out",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 380.0, 435.0, 160.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-47",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 380.0, 360.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"patching_rect" : [ 380.0, 385.0, 76.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-41",
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 30.0, 415.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 685.0, 185.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper stop-lisper",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 685.0, 210.0, 98.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 685.0, 135.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.initialize",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 685.0, 160.0, 111.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r end-toggle",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 160.0, 290.0, 107.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-22",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r start-bang",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 195.0, 345.0, 104.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.input-duration no-out",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 80.0, 200.0, 177.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"patching_rect" : [ 195.0, 145.0, 56.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"patching_rect" : [ 135.0, 145.0, 56.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0 0",
					"patching_rect" : [ 65.0, 145.0, 66.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.input-delta no-out",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 95.0, 175.0, 162.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.input-note no-out",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 65.0, 225.0, 159.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "borax",
					"patching_rect" : [ 85.0, 120.0, 153.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0",
					"patching_rect" : [ 30.0, 465.0, 79.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 160.0, 315.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 145.0, 525.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.ready-next",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 145.0, 550.0, 125.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-130",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.ready-delta silent",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 180.0, 500.0, 160.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-129",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.send-delta",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 160.0, 395.0, 125.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-114",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 160.0, 345.0, 34.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-109",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 160.0, 370.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-108",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 500",
					"patching_rect" : [ 160.0, 426.0, 63.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-63",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.send-note",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 30.0, 440.0, 122.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-40",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0 0",
					"patching_rect" : [ 30.0, 500.0, 97.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0",
					"patching_rect" : [ 30.0, 525.0, 109.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 100",
					"patching_rect" : [ 30.0, 550.0, 109.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"color" : [ 0.843137, 0.741176, 0.431373, 1.0 ],
					"patching_rect" : [ 30.0, 575.0, 198.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.start-playing",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 380.0, 540.0, 134.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-54",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 400",
					"patching_rect" : [ 380.0, 515.0, 63.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-52",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r response-timer",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 380.0, 490.0, 130.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-51",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper r start-gate",
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 680.0, 270.0, 101.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-31",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 680.0, 335.0, 34.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"patching_rect" : [ 695.0, 310.0, 57.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-20",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.player-start",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 680.0, 380.0, 129.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lisper max.player-stop",
					"color" : [ 0.419608, 0.521569, 0.521569, 1.0 ],
					"patching_rect" : [ 595.0, 405.0, 128.0, 20.0 ],
					"numinlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1500.",
					"patching_rect" : [ 595.0, 379.0, 71.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-28",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"patching_rect" : [ 595.0, 305.0, 57.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"color" : [ 0.478431, 0.709804, 0.317647, 1.0 ],
					"patching_rect" : [ 595.0, 270.0, 46.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-27",
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 595.0, 330.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "clocker 500",
					"patching_rect" : [ 595.0, 354.0, 72.0, 20.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 402.5, 739.5, 402.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 492.0, 78.5, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 521.0, 39.5, 521.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 487.0, 154.5, 487.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 618.0, 300.0, 642.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 300.0, 604.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 572.0, 39.5, 572.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 572.0, 129.0, 572.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-109", 1 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 447.0, 156.0, 447.0, 156.0, 337.0, 184.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 367.0, 169.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 416.0, 169.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 332.0, 169.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 545.0, 39.5, 545.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 6 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 8 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 167.0, 89.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 172.5, 104.5, 172.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-75", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 127.0, 339.5, 127.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 1 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 339.5, 156.5, 324.5, 156.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-83", 1 ],
					"hidden" : 0,
					"midpoints" : [ 375.166687, 153.5, 361.166656, 153.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 8 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 152.0, 499.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-91", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-89", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-89", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 300.5, 704.5, 300.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 618.0, 300.5, 742.5, 300.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
