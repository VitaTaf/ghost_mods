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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->init()V

    return-void
.end method

.method static synthetic access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$102(Landroid/mtp/MtpDSUCusInterface;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpDSUCusInterface;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDSUCusInterface;

    .prologue
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private delBOTAFile()V
    .locals 9

    .prologue
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "fl":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_1

    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "fl":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MtpDSUCusInterface"

    const-string v8, "deleteBOTAFile met exception: e"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private getCusResponses(Landroid/mtp/MtpDSUCusOpcode;)I
    .locals 4
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;

    .prologue
    const/4 v1, 0x6

    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "index":I
    sget-object v2, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->parseCUSResponse(I)I

    move-result v2

    return v2

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

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

    const/4 v1, 0x0

    .local v1, "result":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x3

    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v1

    :pswitch_0
    const-string v5, "com.motorola.android.tethered.TETHERED_CHECK_UPDATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_REQUEST_ID"

    sget-object v6, Landroid/mtp/MtpDSUCusInterface;->MTP_CUS_REQUEST_ID:Ljava/lang/Long;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    new-instance v4, Landroid/mtp/MtpDSUUtility;

    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/mtp/MtpDSUUtility;-><init>(Landroid/content/Context;)V

    .local v4, "util":Landroid/mtp/MtpDSUUtility;
    invoke-virtual {v4}, Landroid/mtp/MtpDSUUtility;->getUpgradeResult()I

    move-result v1

    goto :goto_0

    .end local v4    # "util":Landroid/mtp/MtpDSUUtility;
    :pswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v5, p3

    if-ge v5, v8, :cond_1

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    aget v3, p3, v7

    .local v3, "size":I
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motoroal.android.tethered.tetheredinterface.EXTRA_SIZE"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_KEY_VERSION"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .end local v3    # "size":I
    :pswitch_3
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v11, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_2

    array-length v5, p3

    if-ge v5, v8, :cond_3

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    aget v2, p3, v7

    .local v2, "retry":I
    if-nez v2, :cond_4

    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_UPLOAD_STATUS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    const/16 v6, 0xd

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .end local v2    # "retry":I
    :pswitch_5
    const-string v5, "com.motorola.android.tethered.TETHERED_UPDATE_STATUS_CALL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->delBOTAFile()V

    iput-object v11, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    goto/16 :goto_0

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
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x900a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x900b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->IN_CALL_CANCEL:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->GET_RESULT:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    const v1, 0x9009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->COPYPACKAGE_FAIL:Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    return-void
.end method

.method private parseCUSResponse(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x6

    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

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
    new-instance v1, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;-><init>(Landroid/mtp/MtpDSUCusInterface;Landroid/mtp/MtpDSUCusInterface$1;)V

    iput-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/mtp/MtpDSUCusInterface$1;->$SwitchMap$android$mtp$MtpDSUCusOpcode:[I

    invoke-virtual {p1}, Landroid/mtp/MtpDSUCusOpcode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :pswitch_0
    const-string v1, "com.motorola.android.tethered.TETHERED_CHECK_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "com.motorola.android.tethered.TETHERED_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

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
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mCUSReceiver:Landroid/mtp/MtpDSUCusInterface$CUSReceiver;

    :cond_0
    return-void
.end method

.method private waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z
    .locals 1
    .param p1, "op"    # Landroid/mtp/MtpDSUCusOpcode;

    .prologue
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
    const/4 v2, 0x6

    .local v2, "result":I
    iget-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCodesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDSUCusOpcode;

    .local v0, "code":Landroid/mtp/MtpDSUCusOpcode;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->registerCUSReceiver(Landroid/mtp/MtpDSUCusOpcode;)V

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/mtp/MtpDSUCusInterface;->handlerInternal(Landroid/mtp/MtpDSUCusOpcode;Ljava/lang/String;[I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->waitCUSResponse(Landroid/mtp/MtpDSUCusOpcode;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    aget v3, p3, v4

    .local v3, "timeout":I
    iget-object v4, p0, Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;

    int-to-long v6, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0}, Landroid/mtp/MtpDSUCusInterface;->getCusResponses(Landroid/mtp/MtpDSUCusOpcode;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .end local v3    # "timeout":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/mtp/MtpDSUCusInterface;->unregisterReceiver()V

    :goto_1
    return v2

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

    const/4 v2, 0x6

    goto :goto_0

    .end local v3    # "timeout":I
    :catch_0
    move-exception v1

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

    const/4 v2, 0x6

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
    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method
