/* config.h
 * Author: urielsv
 * Last update: 11/10/21 (DD/MM/YY)
 * Updates @ https://github.com/urielsv/dotfiles
 *
 * See LICENSE file for copyright and license details. 
 */

#include "fibonacci.c"
#define TRUE    1
#define FALSE   0
/* appearance */
static const unsigned int borderpx      = 2;        /* border pixel of windows */
static const unsigned int gappx         = 10;        /* gaps between windows */
static const unsigned int snap          = 32;       /* snap pixel */
static const int showbar                = TRUE;        
static const int topbar                 = TRUE;        
static const int user_bh 	    	    = 48;
static const char *fonts[]              = { "MxPlus HP 100LX 10x11:style=Bold:size=18", "Apple Color Emoji:style=Regular:size=16" };
static const char dmenufont[]           = "BmPlus IBM EGA 8x14:size=16";
static const char col_gray1[]           = "#282a36";
static const char col_gray2[]           = "#44475a"; 
static const char col_gray3[]           = "#bd93f9"; 
static const char col_gray4[]           = "#55eca3"; 
static const char col_gray5[]	    	= "#ff79c6";
static const char col_gray6[]		    = "#181920";
static const char col_cyan[]            = "#44475a";
static const unsigned int baralpha      = 0xd0;
static const unsigned int borderalpha   = OPAQUE;
static const char *colors[][3]          = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray6, col_gray2 },
	[SchemeSel]  = { col_gray4, col_gray1,  col_gray4  },
};
static const unsigned int alphas[][3]	= {
	[SchemeNorm] = { OPAQUE, baralpha, borderalpha },
	[SchemeSel] = { OPAQUE, baralpha, borderalpha },
};
/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5" };

static const Rule rules[] = {
	/* class      instance    title       tags mask     isfloating   monitor */
    { "st",     NULL,       NULL,       0,            1,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = TRUE;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[TILE]",      tile },    /* first entry is default */
	{ "[FREE]",      NULL },    /* no layout function means floating behavior */
	{ "[MONO]",      monocle },
	{ "[FIBO]",	 	 spiral },
};

/* key definitions */
#define MODKEY Mod4Mask /* Mod4Mask is Windows key*/
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray6, "-nf", col_gray3, "-sb", col_gray1, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "alacritty", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,			            XK_w,	   spawn,	       SHCMD("chromium") },
	{ MODKEY,			            XK_e,	   spawn,	       SHCMD("alacritty -e ranger") },
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY,	                	XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_plus,   zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY, 	               	    XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,						XK_r,	   setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	{ MODKEY,                       XK_minus,  setgaps,        {.i = -1 } },
	{ MODKEY,                       XK_equal,  setgaps,        {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_equal,  setgaps,        {.i = 0  } },
	{ MODKEY|ShiftMask,             XK_Delete, quit,           {0} },
    TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
};

/* button definitions */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

