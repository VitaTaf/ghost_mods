.class Landroid/mtp/MtpDSUCusInterface;
.super Ljava/lang/Object;
.source "MtpDSUCusInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDSUCusInterface$1;,
        Landroid/mtp/MtpDSUCusInterface$CUSReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_TETHERED_CHECK_UPDATE:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_CHECK_UPDATE"

.field public static final ACTION_TETHERED_CHECK_UPDATE_RESPONSE:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_CHECK_UPDATE_RESPONSE"

.field public static final ACTION_TETHERED_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION"

.field public static final ACTION_TETHERED_UPDATE_NOTIFICATION_RESPONSE:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION_RESPONSE"

.field public static final ACTION_TETHERED_UPDATE_RESULT:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_UPDATE_RESULT"

.field public static final ACTION_TETHERED_UPDATE_STATUS_CALL:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

.field public static final ACTION_TETHERED_UPDATE_UPLOAD_STATUS:Ljava/lang/String; = "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

.field public static final EXTRA_KEY_VERSION:Ljava/lang/String; = "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_KEY_VERSION"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_REQUEST_ID"

.field public static final EXTRA_SIZE:Ljava/lang/String; = "com.motoroal.android.tethered.tetheredinterface.EXTRA_SIZE"

.field public static final EXTRA_UPDATE_RESULT_ERROR_LOG:Ljava/lang/String; = "com.motorola.android.tethered.tetheredinterface.TETHERED_UPDATE_RESULT_ERROR_LOG"

.field private static final MTP_CUS_REQUEST_ID:Ljava/lang/Long;

.field private static final NOT_AVAILABLE:Ljava/lang/String; = "NOT_AVAILABLE"

.field private static final TAG:Ljava/lang/String; = "MtpDSUCusInterface"


# instance fields
.field private mCDL:Ljava/util/concurrent/CountDownLatch;

.field private mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

.field private final mCodesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpDSUCusOpcode;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/content/Intent;

.field private mResult:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDSUCusInterface;->MTP_CUS_REQUEST_ID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    .line 150
    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    .line 153
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->init()V

    .line 155
    return-void
.end method

.method static synthetic access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$102(Landroid/mtp/MtpDSUCusInterface;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpDSUCusInterface;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private delBOTAFile()V
    .locals 9

    .prologue
    .line 323
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v4, "fl":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 325
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 326
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 327
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "fl":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MtpDSUCusInterface"

    const-string v8, "deleteBOTAFile met exception: e"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private getCusResponses(Landroid/mtp/MtpDSUCusOpcode;)I
    .locals 4
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;

    .prologue
    .line 382
    const/4 v1, 0x6

    .line 383
    .local v1, "result":I
    const/4 v0, 0x0

    .line 384
    .local v0, "index":I
    sget-object v2, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 403
    const/4 v0, 0x0

    .line 407
    :goto_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->parseCUSResponse(I)I

    move-result v2

    return v2

    .line 388
    :pswitch_0
    const/4 v0, 0x1

    .line 389
    goto :goto_0

    .line 393
    :pswitch_1
    const/4 v0, 0x0

    .line 394
    goto :goto_0

    .line 399
    :pswitch_2
    const/4 v0, 0x0

    .line 400
    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handlerInternal(Landroid/mtp/MtpDSUCusOpcode;Ljava/lang/String;[I)I
    .locals 12
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;
    .param p2, "stringParam"    # Ljava/lang/String;
    .param p3, "intParams"    # [I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "result":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 313
    const/4 v1, 0x3

    .line 317
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return v1

    .line 245
    :pswitch_0
    const-string v5, "com.motorola.android.tethered.TETHERED_CHECK_UPDATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_REQUEST_ID"

    sget-object v6, Landroid/mtp/MtpDSUCusInterface;->MTP_CUS_REQUEST_ID:Ljava/lang/Long;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 250
    :pswitch_1
    new-instance v4, Landroid/mtp/MtpDSUUtility;

    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/mtp/MtpDSUUtility;-><init>(Landroid/content/Context;)V

    .line 252
    .local v4, "util":Landroid/mtp/MtpDSUUtility;
    invoke-virtual {v4}, Landroid/mtp/MtpDSUUtility;->getUpgradeResult()I

    move-result v1

    .line 253
    goto :goto_0

    .line 259
    .end local v4    # "util":Landroid/mtp/MtpDSUUtility;
    :pswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v5, p3

    if-ge v5, v8, :cond_1

    .line 260
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 262
    :cond_1
    aget v3, p3, v7

    .line 263
    .local v3, "size":I
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v5, "com.motoroal.android.tethered.tetheredinterface.EXTRA_SIZE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_KEY_VERSION"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    .line 269
    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 276
    .end local v3    # "size":I
    :pswitch_3
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    iput-object v11, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    goto :goto_0

    .line 286
    :pswitch_4
    if-eqz p3, :cond_2

    array-length v5, p3

    if-ge v5, v8, :cond_3

    .line 287
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 289
    :cond_3
    aget v2, p3, v7

    .line 290
    .local v2, "retry":I
    if-nez v2, :cond_4

    .line 291
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    .line 300
    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 294
    :cond_4
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    const/16 v6, 0xd

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 306
    .end local v2    # "retry":I
    :pswitch_5
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->delBOTAFile()V

    .line 310
    iput-object v11, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x900a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x900b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->IN_CALL_CANCEL:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->GET_RESULT:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->COPYPACKAGE_FAIL:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private parseCUSResponse(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 411
    const/4 v1, 0x6

    .line 413
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MtpDSUCusInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseCUSResponse met exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerCUSReceiver(Landroid/mtp/MtpDSUCusOpcode;)V
    .locals 3
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;

    .prologue
    .line 212
    new-instance v1, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;-><init>(Landroid/mtp/MtpDSUCusInterface;Landroid/mtp/MtpDSUCusInterface$1;)V

    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void

    .line 218
    :pswitch_0
    const-string v1, "com.motorola.android.tethered.TETHERED_CHECK_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_1
    const-string v1, "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v1, "com.motorola.android.tethered.TETHERED_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    .line 341
    :cond_0
    return-void
.end method

.method private waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z
    .locals 1
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;

    .prologue
    .line 423
    sget-object v0, Landroid/mtp/MtpDSUCusOpcode;->CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/mtp/MtpDSUCusOpcode;->APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/mtp/MtpDSUCusOpcode;->TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handler(ILjava/lang/String;[I)I
    .locals 8
    .param p1, "op"    # I
    .param p2, "strParam"    # Ljava/lang/String;
    .param p3, "intParams"    # [I

    .prologue
    .line 351
    const/4 v2, 0x6

    .line 352
    .local v2, "result":I
    iget-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDSUCusOpcode;

    .line 355
    .local v0, "code":Landroid/mtp/MtpDSUCusOpcode;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    .line 357
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->registerCUSReceiver(Landroid/mtp/MtpDSUCusOpcode;)V

    .line 360
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/mtp/MtpDSUCusInterface;->handlerInternal(Landroid/mtp/MtpDSUCusOpcode;Ljava/lang/String;[I)I

    move-result v2

    .line 362
    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    const/4 v4, 0x0

    aget v3, p3, v4

    .line 366
    .local v3, "timeout":I
    iget-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    int-to-long v6, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->getCusResponses(Landroid/mtp/MtpDSUCusOpcode;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 377
    .end local v3    # "timeout":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->unregisterReceiver()V

    .line 379
    :goto_1
    return v2

    .line 369
    .restart local v3    # "timeout":I
    :cond_2
    :try_start_1
    const-string v4, "MtpDSUCusInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeout without receiving CUS response in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    const/4 v2, 0x6

    goto :goto_0

    .line 373
    .end local v3    # "timeout":I
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MtpDSUCusInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handler met exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    const/4 v2, 0x6

    .line 377
    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->unregisterReceiver()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->unregisterReceiver()V

    throw v4
.end method

.method public sendPendingIntent()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    .line 348
    :cond_0
    return-void
.end method
