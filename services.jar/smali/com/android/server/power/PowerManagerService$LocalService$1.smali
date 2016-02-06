.class Lcom/android/server/power/PowerManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$LocalService;->setScreenBrightnessOverrideFromWindowManager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$LocalService;

.field final synthetic val$sb:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$LocalService;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService$1;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$LocalService$1;->val$sb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService$1;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$LocalService$1;->val$sb:I

    # invokes: Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;I)V

    return-void
.end method
