.class Lcom/android/server/power/PowerManagerService$LocalService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$LocalService;->setUserActivityTimeoutOverrideFromWindowManager(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$LocalService;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$LocalService;J)V
    .locals 0

    .prologue
    .line 3614
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService$3;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$LocalService$3;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService$3;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$LocalService$3;->val$t:J

    # invokes: Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;J)V

    .line 3617
    return-void
.end method
