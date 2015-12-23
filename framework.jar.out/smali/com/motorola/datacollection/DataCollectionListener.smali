.class public abstract Lcom/motorola/datacollection/DataCollectionListener;
.super Ljava/lang/Object;
.source "DataCollectionListener.java"


# static fields
.field private static final LISTEN_EVENT_LOG:I = 0x1

.field private static final LISTEN_OLD_EVENT_LOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DataCollectionListener"


# instance fields
.field public callback:Lcom/motorola/datacollection/IDataCollectionListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/motorola/datacollection/DataCollectionListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/datacollection/DataCollectionListener$1;-><init>(Lcom/motorola/datacollection/DataCollectionListener;)V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionListener;->callback:Lcom/motorola/datacollection/IDataCollectionListener;

    .line 49
    new-instance v0, Lcom/motorola/datacollection/DataCollectionListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/datacollection/DataCollectionListener$2;-><init>(Lcom/motorola/datacollection/DataCollectionListener;)V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract onEventLog(Ljava/lang/String;)V
.end method

.method public abstract onOldLogs(Ljava/lang/String;)V
.end method
