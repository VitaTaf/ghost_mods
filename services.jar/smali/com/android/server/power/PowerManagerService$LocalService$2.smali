.class Lcom/android/server/power/PowerManagerService$LocalService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$LocalService;->setDozeOverrideFromDreamManager(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$LocalService;

.field final synthetic val$sb:I

.field final synthetic val$ss:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$LocalService;II)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->val$ss:I

    iput p3, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->val$sb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->val$ss:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocalService$2;->val$sb:I

    # invokes: Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;II)V

    return-void
.end method
