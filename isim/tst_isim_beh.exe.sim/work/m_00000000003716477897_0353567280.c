/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ferit/Digital_Calendar/fsmClock.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {16777216U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {32U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static int ng9[] = {0, 0};
static int ng10[] = {1, 0};



static void Cont_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5656);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 5528);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_38_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 5544);
    *((int *)t2) = 1;
    t3 = (t0 + 4744);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 2024U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(45, ng0);

LAB10:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(41, ng0);

LAB9:    xsi_set_current_line(42, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3064);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    goto LAB8;

}

static void Always_52_2(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5560);
    *((int *)t2) = 1;
    t3 = (t0 + 4992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 3064);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(55, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 3224);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 3);
    goto LAB21;

LAB9:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB23;

LAB22:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB24;

LAB25:    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(61, ng0);

LAB31:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB29:    goto LAB21;

LAB11:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 2744);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB33;

LAB32:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB34;

LAB35:    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(69, ng0);

LAB41:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB39:    goto LAB21;

LAB13:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2584);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB43;

LAB42:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB44;

LAB45:    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(77, ng0);

LAB51:    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB49:    goto LAB21;

LAB15:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 3544);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng7)));
    memset(t11, 0, 8);
    t9 = (t5 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB53;

LAB52:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB53;

LAB56:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB54;

LAB55:    t13 = (t11 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(85, ng0);

LAB61:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB59:    goto LAB21;

LAB17:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3224);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB21;

LAB23:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t11) = 1;
    goto LAB25;

LAB27:    xsi_set_current_line(57, ng0);

LAB30:    xsi_set_current_line(58, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 3224);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 3);
    goto LAB29;

LAB33:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB35;

LAB34:    *((unsigned int *)t11) = 1;
    goto LAB35;

LAB37:    xsi_set_current_line(65, ng0);

LAB40:    xsi_set_current_line(66, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 3224);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 3);
    goto LAB39;

LAB43:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB45;

LAB44:    *((unsigned int *)t11) = 1;
    goto LAB45;

LAB47:    xsi_set_current_line(73, ng0);

LAB50:    xsi_set_current_line(74, ng0);
    t19 = ((char*)((ng4)));
    t20 = (t0 + 3224);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 3);
    goto LAB49;

LAB53:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB55;

LAB54:    *((unsigned int *)t11) = 1;
    goto LAB55;

LAB57:    xsi_set_current_line(81, ng0);

LAB60:    xsi_set_current_line(82, ng0);
    t19 = ((char*)((ng6)));
    t20 = (t0 + 3224);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 3);
    goto LAB59;

}

static void Always_95_3(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5576);
    *((int *)t2) = 1;
    t3 = (t0 + 5240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(96, ng0);

LAB5:    xsi_set_current_line(97, ng0);
    t4 = (t0 + 3064);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(122, ng0);

LAB27:    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 27);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(98, ng0);

LAB22:    xsi_set_current_line(99, ng0);
    t9 = ((char*)((ng9)));
    t10 = (t0 + 3384);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 27);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB21;

LAB9:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 3384);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng10)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t5, 27, t7, 32);
    t9 = (t0 + 3384);
    xsi_vlogvar_assign_value(t9, t11, 0, 0, 27);
    goto LAB21;

LAB11:    xsi_set_current_line(106, ng0);

LAB23:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 3384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 27);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2744);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 7, t5, 32);
    t7 = (t0 + 2744);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 7);
    goto LAB21;

LAB13:    xsi_set_current_line(110, ng0);

LAB24:    xsi_set_current_line(111, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2744);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 7, t5, 32);
    t7 = (t0 + 2584);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 7);
    goto LAB21;

LAB15:    xsi_set_current_line(114, ng0);

LAB25:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2584);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 5, t5, 32);
    t7 = (t0 + 3544);
    xsi_vlogvar_assign_value(t7, t11, 0, 0, 5);
    goto LAB21;

LAB17:    xsi_set_current_line(118, ng0);

LAB26:    xsi_set_current_line(119, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 3544);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB21;

}


extern void work_m_00000000003716477897_0353567280_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Always_38_1,(void *)Always_52_2,(void *)Always_95_3};
	xsi_register_didat("work_m_00000000003716477897_0353567280", "isim/tst_isim_beh.exe.sim/work/m_00000000003716477897_0353567280.didat");
	xsi_register_executes(pe);
}
