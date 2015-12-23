.class Lcom/motorola/kpi/LaunchCheckinHandler$2;
.super Ljava/lang/Object;
.source "LaunchCheckinHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/kpi/LaunchCheckinHandler;->scheduleNextCheckin(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/kpi/LaunchCheckinHandler;


# direct methods
.method constructor <init>(Lcom/motorola/kpi/LaunchCheckinHandler;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$2;->this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$2;->this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/motorola/kpi/LaunchCheckinHandler;->sendStats(J)V
    invoke-static {v0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->access$200(Lcom/motorola/kpi/LaunchCheckinHandler;J)V

    return-void
.end method
