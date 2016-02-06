.class public Lcom/motorola/server/MotoPersDataBlockService;
.super Lcom/android/server/SystemService;
.source "MotoPersDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/server/MotoPersDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/server/MotoPersDataBlockService$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/MotoPersDataBlockService$1;-><init>(Lcom/motorola/server/MotoPersDataBlockService;)V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    invoke-direct {v0, p0, v5}, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;-><init>(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$1;)V

    .local v0, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    const-string v1, "com.motorola.permission.READ_CID_BLOCK"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    const-string v1, "cid block"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    iput-wide v6, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .end local v0    # "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;-><init>(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$1;)V

    .restart local v0    # "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    const-string v1, "com.motorola.permission.ACCESS_CLOGO_BLOCK"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    const-string v1, "clogo block"

    iput-object v1, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    iput-wide v6, v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/server/MotoPersDataBlockService;

    .prologue
    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/server/MotoPersDataBlockService;
    .param p1, "x1"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/FileInputStream;I)[B
    .locals 1
    .param p0, "x0"    # Ljava/io/FileInputStream;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/server/MotoPersDataBlockService;
    .param p1, "x1"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService;->getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/server/MotoPersDataBlockService;

    .prologue
    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    .locals 4
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    iget-object v0, p0, Lcom/motorola/server/MotoPersDataBlockService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPermission:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    .locals 6
    .param p1, "db"    # Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .prologue
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/server/MotoPersDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mSize:J

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "pos":I
    new-array v1, p1, [B

    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .local v0, "amt":I
    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "moto_pers_data_block"

    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/server/MotoPersDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
