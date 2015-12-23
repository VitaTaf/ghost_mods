.class public Lcom/motorola/android/content/MSimContext;
.super Landroid/content/ContextWrapper;
.source "MSimContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MSimContext"


# instance fields
.field private mContextOriginal:Landroid/content/Context;

.field private mSimContextArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "originalContext"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    .line 143
    iput-object p1, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 147
    const-string v0, "MSimContext"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "MSimContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating the MSimContext for Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-void
.end method

.method private createNewPlmnConfiguration(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "originalConfig"    # Landroid/content/res/Configuration;
    .param p2, "subId"    # I

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/motorola/android/content/MSimContext;->getSimPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "plmn":Ljava/lang/String;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 47
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/motorola/android/content/MSimContext;->getMcc(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 48
    invoke-direct {p0, v1}, Lcom/motorola/android/content/MSimContext;->getMnc(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 49
    return-object v0
.end method

.method private getMcc(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MSimContext"

    const-string v3, "Error parsing plmn for Mcc"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMnc(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MSimContext"

    const-string v3, "Error parsing plmn for Mnc"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNumOfPhones()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "MSimContext"

    const-string v1, "MSimContext getNumOfPhones called while mTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    goto :goto_0
.end method

.method private getSimContext(I)Landroid/content/Context;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/motorola/android/content/MSimContext;->isMultiSimPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    .line 105
    :goto_0
    return-object v0

    .line 99
    :cond_0
    if-lez p1, :cond_1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    .line 100
    :cond_1
    const-string v0, "MSimContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimContext: Invalid subId in getSimContext("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Returning the original Context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/content/MSimContext;->updateSimConfiguration(I)V

    .line 105
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method private getSimPlmn(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "MSimContext"

    const-string v1, "MSimContext getSimPlmn called while mTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, ""

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isMultiSimPhone()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "MSimContext"

    const-string v1, "MSimContext isMultiSim called while mTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized updateSimConfiguration(I)V
    .locals 18
    .param p1, "subId"    # I

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 169
    .local v12, "originalConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 170
    .local v4, "copyContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 171
    .local v3, "copyConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x1

    .line 172
    .local v2, "configDelta":I
    if-eqz v4, :cond_0

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/content/MSimContext;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 174
    invoke-virtual {v12, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 176
    :cond_0
    const-string v14, "MSimContext"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 177
    const-string v14, "MSimContext"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateSimConfiguration("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") delta: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    if-eqz v2, :cond_5

    .line 186
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/content/MSimContext;->getSimPlmn(I)Ljava/lang/String;

    move-result-object v13

    .line 187
    .local v13, "plmn":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/android/content/MSimContext;->getMcc(Ljava/lang/String;)I

    move-result v8

    .line 188
    .local v8, "newSimMcc":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/android/content/MSimContext;->getMnc(Ljava/lang/String;)I

    move-result v9

    .line 189
    .local v9, "newSimMnc":I
    if-nez v3, :cond_6

    const/4 v10, 0x0

    .line 190
    .local v10, "oldSimMcc":I
    :goto_0
    if-nez v3, :cond_7

    const/4 v11, 0x0

    .line 192
    .local v11, "oldSimMnc":I
    :goto_1
    if-ne v8, v10, :cond_2

    if-ne v9, v11, :cond_2

    const/4 v14, 0x2

    if-eq v2, v14, :cond_5

    .line 194
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/motorola/android/content/MSimContext;->createNewPlmnConfiguration(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    .line 195
    .local v6, "newSimConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v14, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v7

    .line 198
    .local v7, "newSimContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 200
    .end local v7    # "newSimContext":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 201
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    const-string v14, "MSimContext"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 202
    const-string v14, "MSimContext"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SubId("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") current Config ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v14, "MSimContext"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Updating SubId("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") with new Configuration ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/LongSparseArray;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v6, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "newSimConfig":Landroid/content/res/Configuration;
    .end local v8    # "newSimMcc":I
    .end local v9    # "newSimMnc":I
    .end local v10    # "oldSimMcc":I
    .end local v11    # "oldSimMnc":I
    .end local v13    # "plmn":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    return-void

    .line 189
    .restart local v8    # "newSimMcc":I
    .restart local v9    # "newSimMnc":I
    .restart local v13    # "plmn":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget v10, v3, Landroid/content/res/Configuration;->mcc:I

    goto/16 :goto_0

    .line 190
    .restart local v10    # "oldSimMcc":I
    :cond_7
    iget v11, v3, Landroid/content/res/Configuration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 168
    .end local v2    # "configDelta":I
    .end local v3    # "copyConfig":Landroid/content/res/Configuration;
    .end local v4    # "copyContext":Landroid/content/Context;
    .end local v8    # "newSimMcc":I
    .end local v9    # "newSimMnc":I
    .end local v10    # "oldSimMcc":I
    .end local v12    # "originalConfig":Landroid/content/res/Configuration;
    .end local v13    # "plmn":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method


# virtual methods
.method public getResources(I)Landroid/content/res/Resources;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/motorola/android/content/MSimContext;->getSimContext(I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
