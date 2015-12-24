.class Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
.super Ljava/lang/Object;
.source "MotoPersDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/MotoPersDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataBlockInfo"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field mPermission:Ljava/lang/String;

.field mSize:J

.field mWritable:Z

.field final synthetic this$0:Lcom/motorola/server/MotoPersDataBlockService;


# direct methods
.method private constructor <init>(Lcom/motorola/server/MotoPersDataBlockService;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/server/MotoPersDataBlockService;
    .param p2, "x1"    # Lcom/motorola/server/MotoPersDataBlockService$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;-><init>(Lcom/motorola/server/MotoPersDataBlockService;)V

    return-void
.end method
