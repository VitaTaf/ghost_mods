.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private mColorStrings:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mEditDialog:Landroid/app/Dialog;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mTintArr:[I

.field private mTintSelectorPos:I

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/sim/SimSettings$SimPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimSettings$SimPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    iget v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    return v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
    .locals 17
    .param p1, "simPref"    # Lcom/android/settings/sim/SimSettings$SimPreference;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->isSimLocked(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13, v14}, Lcom/android/settings/sim/SimSettings;->unlockSim(Landroid/telephony/SubscriptionInfo;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040069

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "dialogLayout":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0f00ef

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .local v6, "nameText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f0f00f0

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .local v11, "tintSpinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0400b1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mColorStrings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v15}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    .local v1, "adapter":Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;
    const v13, 0x1090009

    invoke-virtual {v1, v13}, Lcom/android/settings/sim/SimSettings$SimPreference$SelectColorAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v11, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    array-length v13, v13

    if-ge v5, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I

    aget v13, v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v14

    if-ne v13, v14, :cond_3

    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mTintSelectorPos:I

    :cond_1
    new-instance v13, Lcom/android/settings/sim/SimSettings$SimPreference$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/android/settings/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/widget/Spinner;)V

    invoke-virtual {v11, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v13, 0x7f0f00f2

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, "numberView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v8

    .local v8, "rawNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const v13, 0x104000e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v13}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .local v12, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "simCarrierName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    const v13, 0x7f0f00f1

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "carrierView":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .end local v10    # "simCarrierName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f090982

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f09017c

    new-instance v14, Lcom/android/settings/sim/SimSettings$SimPreference$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v11}, Lcom/android/settings/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f090179

    new-instance v14, Lcom/android/settings/sim/SimSettings$SimPreference$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/sim/SimSettings$SimPreference$3;-><init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mEditDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/sim/SimSettings$SimPreference;->mEditDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .end local v3    # "carrierView":Landroid/widget/TextView;
    .end local v7    # "numberView":Landroid/widget/TextView;
    .end local v8    # "rawNumber":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .restart local v7    # "numberView":Landroid/widget/TextView;
    .restart local v8    # "rawNumber":Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .restart local v3    # "carrierView":Landroid/widget/TextView;
    .restart local v10    # "simCarrierName":Ljava/lang/String;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104000e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method public getSubInfoRecord()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public removeDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mEditDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mEditDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mEditDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090982

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .local v1, "simStatus":Z
    :goto_0
    # getter for: Lcom/android/settings/sim/SimSettings;->DBG:Z
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: simStatus - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    const v4, 0x7f090a5c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->setChecked(Z)V

    .end local v1    # "simStatus":Z
    :goto_3
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v1    # "simStatus":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isSimLocked(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f090a67

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    # invokes: Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    .end local v1    # "simStatus":Z
    :cond_6
    const v2, 0x7f09097f

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->setSummary(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setChecked(Z)V

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings$SimPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->removeDialog()V

    goto :goto_3
.end method
