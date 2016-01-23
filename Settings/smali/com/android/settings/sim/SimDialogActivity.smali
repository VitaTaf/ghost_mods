.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 59
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 92
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0903fa

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    const v4, 0x7f0903fb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v4, 0x7f090081

    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/settings/sim/SimDialogActivity$1;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const v4, 0x7f090082

    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings/sim/SimDialogActivity$2;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    new-instance v4, Lcom/android/settings/sim/SimDialogActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/SimDialogActivity$3;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 137
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/sim/addon/DDSUpdaterService;->startDDSUpdaterService(Landroid/content/Context;I)Z

    .line 141
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 144
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 145
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 146
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 149
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 150
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 151
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 154
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 155
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 158
    .local v3, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 160
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 161
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "phoneAccountId":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 170
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "phoneAccountId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 174
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v28

    .line 176
    .local v28, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v12

    .line 178
    .local v12, "allSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v12, :cond_2

    const/16 v20, 0x0

    .line 179
    .local v20, "numSlots":I
    :goto_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v27, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_0

    .line 183
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 188
    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/SubscriptionInfo;

    .line 189
    .local v26, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isSubReady(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 178
    .end local v17    # "i":I
    .end local v20    # "numSlots":I
    .end local v26    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v27    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    goto :goto_0

    .line 193
    .restart local v17    # "i":I
    .restart local v20    # "numSlots":I
    .restart local v27    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    if-nez v27, :cond_4

    const/16 v24, 0x0

    .line 195
    .local v24, "selectableSubInfoLength":I
    :goto_2
    new-instance v25, Lcom/android/settings/sim/SimDialogActivity$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v27

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/sim/SimDialogActivity$4;-><init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V

    .line 235
    .local v25, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v18, Lcom/android/settings/sim/SimDialogActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/sim/SimDialogActivity$5;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 251
    .local v18, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v14, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_6

    .line 253
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v29

    .line 254
    .local v29, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v29 .. v29}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v23

    .line 257
    .local v23, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090996

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 260
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v21

    .line 262
    .local v21, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const/4 v6, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 267
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v22

    .line 268
    .local v22, "phoneAccountId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v26

    .line 270
    .restart local v26    # "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 193
    .end local v14    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v18    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v21    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v22    # "phoneAccountId":Ljava/lang/String;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v24    # "selectableSubInfoLength":I
    .end local v25    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v26    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v29    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_4
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v24

    goto/16 :goto_2

    .line 272
    .restart local v14    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v18    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v21    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v24    # "selectableSubInfoLength":I
    .restart local v25    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v29    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 276
    .end local v21    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v23    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v29    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_6
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 277
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/SubscriptionInfo;

    .line 279
    .restart local v26    # "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v26, :cond_8

    .line 280
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    .line 281
    .local v16, "displayName":Ljava/lang/CharSequence;
    if-nez v16, :cond_7

    .line 282
    const-string v16, ""

    .line 284
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v16    # "displayName":Ljava/lang/CharSequence;
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 286
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090996

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 292
    .end local v26    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_9
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 294
    .local v10, "arr":[Ljava/lang/String;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .local v13, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_a

    move-object v7, v14

    :goto_6
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0400ae

    move-object/from16 v6, p0

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 302
    .local v5, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 313
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid dialog type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in SIM dialog."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_a
    move-object/from16 v7, v27

    .line 296
    goto :goto_6

    .line 304
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :pswitch_0
    const v6, 0x7f09097a

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    :goto_7
    move-object/from16 v0, v25

    invoke-virtual {v13, v5, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    .line 318
    .local v15, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 320
    new-instance v6, Lcom/android/settings/sim/SimDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/sim/SimDialogActivity$6;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v15, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    return-object v15

    .line 307
    .end local v15    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v6, 0x7f09097c

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 310
    :pswitch_2
    const v6, 0x7f090986

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 85
    :goto_0
    return-void

    .line 79
    :pswitch_1
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
